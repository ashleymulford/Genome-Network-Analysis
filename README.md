# Genome-Network-Analysis
## Creation of Genome Netowrks:
### Genome Networks:
#### Used to show relationships between multiple genomes (both within and between species), with "nodes" representing individual genomes, and "edges" connecting related genomes together
#### Multiple different netowrks can be produce for the same nodes through different methods (using different tools and thresholds)
##### VSEARCH/USEARCH - Used to create the genome networks, command is cluster_fast, with thresholds between .35-.75
##### CD-HIT - another network creating tool
#
## Analysis/Comparison of Genome Networks:
### Challenges of Comparison:
#### The genome networks by USEARCH, VSEARCH, and CD-HIT are all complex, containing thousands of nodes and edges, with variations occuring between networks procuded by different tools and thresholds. This creates challenges when trying to compare these networks, as they are very large and multidimensional in nature, making it difficult to anaylze them and produce new visuals that display the relationship between the networks
### Dimensionality Reduction: 
#### 
#### Principal Components Analysis:
##### Dimensionality reduction technique used to extract the dominant patterns in a data matrix by maximizing variance. For a multidimensional data set, two principle components are derived, which function as new dimensions for the data set, so a visual representation can be created to show the relationships within a complex data matrix. The first principle component is derived by finding the dimension that accounts for the most variation, the second is orthogonal to the first, with the data falling around the first component.
### SNAP.py (SNAP for Python) - Used to compare and analyze netowrks -> can be applied to genome networks, good for large scale networks
#### Two versions: C++ and Python, combined for preformance and flexibility
