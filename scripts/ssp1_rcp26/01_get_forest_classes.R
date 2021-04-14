###################################################################
## Script to manage GCAM land use dataset for 2030, Measn Sd Gcms 
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021
###################################################################

## Library

library(raster)
library(ncdf4)
library(rgdal)
library(terra)
library(Thermimage)
############################################## 2030_SSP1_ RCP26 ############################################## 


## Open netCFD file (ncdf4 packg)

a_2030 <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/GCAM_Demeter_LU_H_ssp1_rcp26_modelmean_2030.nc')

## Converte variables in spatial objet (terra pckg)

ssp1_rcp26_variables <- rast(a$filename)

# Select onle forest classes (PTF1 to PTF8)

ssp1_rcp26 <- ssp1_rcp26_variables[[2:8]]

#plot(ssp1_rcp26)

## Sum forest classes

ssp1_26_forest <- sum(ssp1_rcp26)

plot(ssp1_26_forest)


############# WriteRaster

writeRaster(ssp1_26_forest, "./results/ssp1_26_forest_1.tif")


############################################## SSP1_ RCP26 ############################################## 

