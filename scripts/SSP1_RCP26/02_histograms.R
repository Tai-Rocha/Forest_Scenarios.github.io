###################################################
## Script to build histograms for forest (GCAM)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021
###################################################

#Library
library(raster)
library(ncdf4)
library(rgdal)

############################################### SSP1_RCP26 ############################################## 

###############################################    2020    ############################################### 

F_2020 <- raster("./data/GCAM/Forest_classes/SSP1_RCP26/2020/Forest_2020_1.tif")

Forest_2020 <- t(flip(F_2020, direction = "y"))

plot(Forest_2020)

## Save final raster layer of forest

writeRaster(Forest_2020, "./results/SSP1_RCP26_Forest_2020.tif")

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2030    ############################################### 

F_2030 <- raster("./data/GCAM/Forest_classes/SSP1_RCP26/2030/Forest_2030_1.tif")

Forest_2030 <- t(flip(F_2030, direction = "y"))

plot(Forest_2030)

writeRaster(Forest_2030, "./results/SSP1_RCP26_Forest_2030.tif")

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 


###############################################    2050    ############################################### 

F_2050 <- raster("./data/GCAM/Forest_classes/SSP1_RCP26/2050/Forest_2050_1.tif")

Forest_2050 <- t(flip(F_2050, direction = "y"))

plot(Forest_2050)

writeRaster(Forest_2050, "./results/SSP1_RCP26_Forest_2050.tif")

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 



