# Genome Networks
## Background Information:
### For our project, we analyzed viral and bacterial data to find co-occurrence across multiple samples of lake water. As viruses cannot reproduce without a host, such as a bacterial cell, the quantity of virus will increase when a particular bacterial species it is capable of infecting is prevalent. By looking at co-occurrence across samples, a correlation indicative of infection can be established. This pattern can then be visualized through the creation of genome networks. 
### Genome Networks:
#### Used to show relationships between multiple genomes (both within and between species), with "nodes" representing individual genomes, and "edges" connecting related genomes together. In our case, the genome networks show location based connections between viral, bacteriophage genomes and their hosts' genomes. By creating a network that shows viruses and bacteria that occur together in multiple samples of lake water, these connections become intutive and easy to spot by eye alone. It allows of a table with thousands of data points to become a visual display of patterns that would otherwise be difficult to identify.
## Creation of Genome Networks:
### Data provided by the bioinformatics department was applied to create genome networks. This data was collected from water samples from Lake Michigan. A total of 31 samples were collected over the course of 12 weeks. DNA and RNA from viruses and bacteria were isolated, sequenced, and BLASTed (for species identification), and then compiled into data tables, containing nomenclature and a corresponding quantity for each water sample. The data worked with in this project was given in .cvs format. From there we created python code in a jupyter notebook, which uses the packages 'pandas' and 'numpy' to determine co-occurrence in the data. Quantity thresholds are also set in the code, as both the bacterial and viral data are given with quantity values. The bacterial data quantity is given in number of cells found, and we used a threshold of at least 100 cells present for all of our networks. Therefore, a bacterial cell is only counted as present in a sample if t has a count of 100 cells in that sample. Across samples, a bacterial species may be found a dozen times, or only once. However, the data was edited to only include bacterial species that show up at least once, prior to inputting it in the code. As for the viral data, only segements of the genome were found, measured in percent proteins hit. This accounts for the percentage of the genome that was found in a sample. For the viral data, we used different thresholds (25%, 35%, and 50%) allowing for the creation of three different edge lists. These edge lists were then inputted into Cytoscape, a software that generates networks. The final product was three genome networks with different thresholds for varying degrees of correlation. These networks display the co-occurrence between viruses and bacteria, and can be used to predict potential infection relationships.
## Installation/User Guide for the Code:
### This is a user’s guide for the Genome Network code. This code programmed in a python Jupyter notebook. 
### Downloads: 
#### First, download ‘genome_network_code’. This folder should have the code and other necessary files.
#### To access this notebook, you must have Anaconda downloaded and installed onto your laptop or computer. For further details about downloading Jupyter, go to this link: https://jupyter.org/install
### Explanation of files:
#### within the genome_network_code sub-folder inside of the genome_network_code folder, there is a folder titled "virus_files". transfer csv files into this folder. (make sure that the csv files are names only with the sample name - as seen with the files already in that folder). Any files you don't need to be a part of the edge list, remove from that folder.
#### within the genome_network_code sub-folder there is also a tsv file titled "cooccurance" (yes it is spelled wrong, change it if you'd like). This displays the output of the code, the edge list. If you'd like to save it, "save as" and title it something other than "cooccurance".
### NOTE: do not open csv files in excel - this will corrupt this file and render it unreadable to the code. Rather, open it in a text editor. Additionally, if there are quotation marks around each line of the csv file, it will also be unreadable to the code.
#### In the same sub-folder, there should be an IPYNB file titled "bv_analysis". This is the code that is to be opened in Jupyter.
#### bacteria_virus_analysis is the alternate file with bacterial data that the code works with to produce an edge list. You can change the name of the file the code works with in the code, explained later.
### Usage:
#### replace the .csv files in the "virus_files" folder with the sample data that is desired (in .csv format).
#### If you downloaded and installed everything correctly, you should be able to search within your computer "Anaconda Prompt". Open it and type in (without starting with a space), "jupyter notebook". This should take you to a webpage that displays the folders present on your computer. Locate the "genome_network_code" folder within your computer, open it, and click on the IPYNB file, "bv_analysis". By doing this, you are opening the code in Jupyter.
#### scroll down to "In [8]". This is the code to run. To replace the bacterial data provided with the bacterial data desired (in .csv format), replace "bacteria_virus_data" with the title of the desired bacterial data file.
#### now scroll to the top and run each part of the code. An edge list should be procuded at the bottom.
#### to save this as a file, go into the folder on your computer and open the cooccurance.tsv file and "save as".
#### you now have an edge list as a .tsv file! This file can be used with Cytoscape to produce a network 







