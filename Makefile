#CC=/usr/pkg/bin/g++
CC=/usr/bin/g++
CFLAGS= -g -Wall -I.
LINKFLAGS= -g -Wall

all: experiment

experiment: edgeList.o
	$(CC) $(LINKFLAGS) -o experiment edgeList.o

edgeList.o: edgeList.cc
	$(CC) $(CFLAGS) -c edgeList.cc -o edgeList.o

clean:
	rm -f *.o experiment
