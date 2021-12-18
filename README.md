# Discrete-Time Formation Control

## Background

The implementation of this Formation Control algorithm is based on the concepts of Graph Theory. The communication/ interaction topology of group of agents/ robots can be depicted as a graph with each agent represented by a vertex in the graph, and each edge represents the presence of a communication link.

The graph Laplacian matrix plays an important role here. For an undirected graph, it can be defined as:

L(G)= Δ(G)-A(G)

where Δ(G) is the Degree Matric and A(G) is the Adjacency Matrix of the graph.

## The Consensus Protocol

The Formation Control formula is based on the Consensus Protocol which is an interaction rule for information exchange among the agents comprising the network. In order to achieve consensus, the following rule needs to be folllowed:

xdot = -Lx

where L is the Graph Laplacian matrix and x is the attribute for which consensus is sought.

## Formation Control

If the desired inter-agent distancs are given as:

![image](https://user-images.githubusercontent.com/73758224/146636804-2c85d554-d3a9-440a-a657-565f4433e04a.png)

the formation control is governed by the following:

![image](https://user-images.githubusercontent.com/73758224/146636764-181c5754-f35c-45db-9c6b-e8b7ae8c8a96.png)

## Discrete-Time Formulation Control

In order to have a discrete-time formulation, which would avoid the use of differentials, we can re-write the above expression as:

![image](https://user-images.githubusercontent.com/73758224/146637032-245242e3-005a-48ea-85ca-1ab6153c660a.png)

where D is the maximum out-degree of any node (agent) in the graph (network), L is the graph Laplacian Matrix and dij represents the desired inter-agent distances.

# Simulation

In this simulation, we have a network comprising 6 agents/ robots. The initial locations can be random. Each agent has 2 neighbours (thus D = 2) and we have a cyclical communication graph.

We can see that we are able to get a hexagonal formation within just 10 iterations.

![image](https://user-images.githubusercontent.com/73758224/146637234-8b98cb56-7089-4093-9743-7d52a683a991.png)

Here, the black dots represent the initial positions and the colored dots are the final agent positions.




