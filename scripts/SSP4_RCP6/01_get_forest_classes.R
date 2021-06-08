###############################################################################
## Script to manage GCAM land use dataset for SSP4_RCP6 (2020, 2030 and 2050)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021
## 4.02 R version
###############################################################################

## Library

library(raster)
library(ncdf4)
library(rgdal)
library(terra)

############################################### SSP4_RCP6 ############################################## 

###############################################    2020    ############################################### 


## Open netCFD file (ncdf4 packg)

a_2020 <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/SSP4_RCP6/GCAM_Demeter_LU_H_ssp4_rcp60_modelmean_2020.nc')

## Convert variables in spatial objet (terra pckg)

all_2020 <- rast(a_2020$filename)

# Select onle forest classes (PTF1 to PTF8)

forest_2020_1 <- all_2020[[2:9]]

plot(forest_2020_1)

## Sum forest classes

Forest_2020 <- sum(forest_2020_1)

plot(Forest_2020)


## Save raster in results folder

writeRaster(Forest_2020, "./data/GCAM/Forest_classes/SSP4_RCP6/2020/Forest_2020_1.tif")

## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2030    ############################################### 

## Open netCFD file (ncdf4 packg)

b_2030 <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/SSP4_RCP6/GCAM_Demeter_LU_H_ssp4_rcp60_modelmean_2030.nc')

## Convert variables in spatial objet (terra pckg)

all_2030 <- rast(b_2030$filename)

# Select onle forest classes (PTF1 to PTF8)

forest_2030_1 <- all_2030[[2:9]]

plot(forest_2030_1)

## Sum forest classes

Forest_2030 <- sum(forest_2030_1)

plot(Forest_2030)


## Save raster in results folder

writeRaster(Forest_2030, "./data/GCAM/Forest_classes/SSP4_RCP6/2030/Forest_2030_1.tif")

## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2050    ############################################### 

## Open netCFD file (ncdf4 packg)

c_2050 <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/SSP4_RCP6/GCAM_Demeter_LU_H_ssp4_rcp60_modelmean_2050.nc')

## Convert variables in spatial objet (terra pckg)

all_2050 <- rast(c_2050$filename)

# Select onle forest classes (PTF1 to PTF8)

forest_2050_1 <- all_2050[[2:9]]

plot(forest_2050_1)

## Sum forest classes

Forest_2050 <- sum(forest_2050_1)

plot(Forest_2050)


## Save raster in results folder

writeRaster(Forest_2050, "./data/GCAM/Forest_classes/SSP4_RCP6/2050/Forest_2050_1.tif")

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

