################################################################################################
## Forests in SSPs scenarios 
## Aplly a minimmun threshold of ?? to make binary raster (0- No forest and 1- Forest)
## Author: Tainá Rocha
## Date: 23 April  2021
## 4.02 R version
################################################################################################

# Library

library(raster)

## Steps

#1 list 12 layers

lista <- list.files(path = "./results/", pattern = ".tif", recursive = T,  full.names = T)  

#2 put together and plot
a <- stack(lista) 
plot(a)

#3 make binary with treshold 10
b <- a >=50.0

#4 correct names then plot

names(b) <-names(a)

plot(b)

#5 Write rasters
writeRaster(b, filename = names(a), format = "GTiff", bylayer = T)

