library(igraph)

setwd("/20230112_network_analysis_Japanese_investor_coinvestor/")
investor <- read.csv("Coinvestors_DataProcessing_ver0.2.csv", header=T, row.names=1)

investor.mat = as.matrix(investor)
investor.g <- graph.adjacency(investor.mat, weighted=T, mode="undirected")
plot(investor.g)

g <- graph.data.frame(investor)

plot(investor.g, vertex.size = 1, vertex.label = '') 

igraph.options(plot.layout=layout.graphopt, vertex.size=1)
plot(investor.g, vertex.size = 1, vertex.label = '') 