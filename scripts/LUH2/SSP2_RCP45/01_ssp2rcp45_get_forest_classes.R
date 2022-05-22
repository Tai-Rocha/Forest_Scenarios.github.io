###############################################################################
## Script to manage LUH2 land use dataset for SSP2_RCP45 (2020, 2030 and 2050)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021
## 4.02 R version
###############################################################################

## Library

library(raster)


############################################### SSP2_RCP45 ############################################## 

###############################################    2020    ############################################### 


## List file

lista_1 <- list.files("data/LUH2/SSP2_45/2020/" ,pattern = "tif", full.names = TRUE)

a_2020 <- stack(lista_1)

plot(a_2020)

# SUM

y_2020 <- sum(a_2020)

plot(y_2020)

## Write

writeRaster(y_2020, "results/LUH2/SSP245/2020_SSP2_RCP45_Forest_LUH2.tif")


## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2030    ############################################### 

## List file

lista_2 <- list.files("data/LUH2/SSP2_45/2030/" ,pattern = "tif", full.names = TRUE)

b_2030 <- stack(lista_2)

plot(b_2030)

# SUM

y_2030 <- sum(b_2030)

plot(y_2030)

## Write

writeRaster(y_2030, "results/LUH2/SSP245/2030_SSP2_RCP45_Forest_LUH2.tif")


## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 
###############################################    2050    ############################################### 


## List file

lista_3 <- list.files("data/LUH2/SSP2_45/2050/" ,pattern = "tif", full.names = TRUE)

c_2050 <- stack(lista_3)

plot(c_2050)

# SUM

y_2050 <- sum(c_2050)

plot(y_2050)

## Write

writeRaster(y_2050, "results/LUH2/SSP245/2050_SSP2_RCP45_Forest_LUH2.tif")


## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

