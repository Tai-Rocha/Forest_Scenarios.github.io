###############################################################################
## Script to manage Global Land Projection land use dataset for SSP2_RCP45 (2020, 2030 and 2050)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021
## 4.02 R version
###############################################################################

## Library

library(raster)
library(rgdal)
library(terra)

############################################### SSP2_RCP45 ############################################## 

###############################################    2020    ############################################### 


## Open file 

a_2020 <- raster::raster('data/Global_Land_Projection/Global 7-land-types LULC projection dataset under SSPs-RCPs/SSP2_RCP45/global_SSP2_RCP45_2020.tif')

plot(a_2020)

## Reclassifies

matriz_reclass<-matrix(data=c(1,2,3,4,5,6,7,0,1,0,0,0,0,0),nrow=7,ncol=2)

FGLP_2020 <- raster::reclassify(x = a_2020, #objeto raster
                                rcl =matriz_reclass, #matriz criada com os valores de origem e destino
                                filename="results/Global_Land_Projection/SSP2_RCP45/2020_SSP2_RCP45_Forest_Global_Land_Projection.tif",
                                format="GTiff") #nome do arquivo de output

plot(FGLP_2020)

## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2030    ############################################### 

## Open file 

b_2030 <- raster::raster('data/Global_Land_Projection/Global 7-land-types LULC projection dataset under SSPs-RCPs/SSP2_RCP45/global_SSP2_RCP45_2030.tif')

plot(b_2030)

## Reclassifies

matriz_reclass<-matrix(data=c(1,2,3,4,5,6,7,0,1,0,0,0,0,0),nrow=7,ncol=2)

FGLP_2030 <- raster::reclassify(x = b_2030, #objeto raster
                                rcl =matriz_reclass, #matriz criada com os valores de origem e destino
                                filename="results/Global_Land_Projection/SSP2_RCP45/2030_SSP2_RCP45_Forest_Global_Land_Projection.tif",
                                format="GTiff") #nome do arquivo de output

plot(FGLP_2030)

## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2050    ############################################### 

## Open file 

c_2050 <- raster::raster('data/Global_Land_Projection/Global 7-land-types LULC projection dataset under SSPs-RCPs/SSP2_RCP45/global_SSP2_RCP45_2050.tif')

plot(c_2050)

## Reclassifies

matriz_reclass<-matrix(data=c(1,2,3,4,5,6,7,0,1,0,0,0,0,0),nrow=7,ncol=2)

FGLP_2050 <- raster::reclassify(x = c_2050, #objeto raster
                                rcl =matriz_reclass, #matriz criada com os valores de origem e destino
                                filename="results/Global_Land_Projection/SSP2_RCP45/2050_SSP2_RCP45_Forest_Global_Land_Projection.tif",
                                format="GTiff") #nome do arquivo de output

plot(FGLP_2050)

## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

