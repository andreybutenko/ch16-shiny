# Exercise 1: Loading functions

# Set your directory


# Source your BuildScatter.r script, exposing your BuildScatter function
source("scripts/BuildScatter.R")

# Use your BuildScatter function to draw a well labeled ggplot scatterplot of the iris data
BuildScatter(iris, iris$Sepal.Length, iris$Sepal.Width, iris$Species, 
             title = "iris data", xlab = "sepal length", ylab = "sepal width")