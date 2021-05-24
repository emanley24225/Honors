install.packages("networkD3")
install.packages("dplyr")
library(networkD3)
library(readxl)
library(dplyr)

totnodes <- read_excel("Z:/Mexico/Ethan/Transition_Data.xlsx", sheet = "totnodes")
totnodes$Group <- ordered(totnodes$Group,levels= c("E", "A", "B", "C", "D"))
totlinks <- read_excel("Z:/Mexico/Ethan/Transition_Data.xlsx", sheet = "totlinks")
my_color <- 'd3.scaleOrdinal() .domain(["A", "B", "C", "D", "E"]) .range(["#E64C00", "#E6E600", "#98E600", "#267300", "#9C9C9C"])'

sankeyNetwork( totlinks, totnodes, Source = "Source",
               Target = "Target", Value = "Value", NodeID = "Name",
               fontSize = 20, nodeWidth = 15, NodeGroup = "Group",
               fontFamily = "sans-serif", iterations = 0, colourScale = my_color)


