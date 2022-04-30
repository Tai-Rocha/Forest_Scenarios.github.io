###############################################################################
## Script to manage GCAM land use dataset for SSP5_RCP85 (2020, 2030 and 2050)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021
###############################################################################

## Library

library(raster)
library(ncdf4)
library(rgdal)
library(terra)

############################################### SSP5_RCP85 ############################################## 

###############################################    2020    ############################################### 


## Open netCFD file (ncdf4 packg)

a_2020 <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/SSP5_RCP85/GCAM_Demeter_LU_H_ssp5_rcp85_modelmean_2020.nc')

## Convert variables in spatial objet (terra pckg)

all_2020 <- terra::rast(a_2020$filename)

all_2020[[2]]
all_2020[[3]]
all_2020[[4]]
all_2020[[5]]
all_2020[[6]]
all_2020[[7]]
all_2020[[8]]
all_2020[[9]]
all_2020[[10]]
all_2020[[11]]
all_2020[[12]]

# Select only forest classes (PTF1 to PFT 11)

forest_2020_1 <- all_2020[[2:12]]

#plot(forest_2020_1)

## Sum forest classes

Forest_2020 <- sum(forest_2020_1)
plot(Forest_2020)

### Directions

flip_Forest_2020 <-t(flip(Forest_2020, direction = "h"))
#plot(flip_Forest_2020)

flip_Forest_2020 <- flip(Forest_2020, direction = "h")
#plot(flip_Forest_2020)

flip_Forest_2020 <- raster::raster(flip_Forest_2020)
#plot(flip_Forest_2020)

f_Forest_2020 <- t(flip(flip_Forest_2020, direction = "y"))
#plot(f_Forest_2020)

tf_Forest_2020 <- flip(flip_Forest_2020, direction = "x")
#plot(tf_Forest_2020)

final_Forest_2020 <- t(flip(tf_Forest_2020, direction = "y"))
plot(final_Forest_2020) 


## Save raster in results folder

raster::writeRaster(final_Forest_2020, "./results/SSP5_RCP85/2020_SSP5_RCP85_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif")

## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2030    ############################################### 

## Open netCFD file (ncdf4 packg)

b_2030 <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/SSP5_RCP85/GCAM_Demeter_LU_H_ssp5_rcp85_modelmean_2030.nc')

## Convert variables in spatial objet (terra pckg)

all_2030 <- terra::rast(b_2030$filename)

all_2030[[2]]
all_2030[[3]]
all_2030[[4]]
all_2030[[5]]
all_2030[[6]]
all_2030[[7]]
all_2030[[8]]
all_2030[[9]]
all_2030[[10]]
all_2030[[11]]
all_2030[[12]]

# Select only forest classes (PTF1 to PFT 11)

forest_2030_1 <- all_2030[[2:12]]

#plot(forest_2030_1)

## Sum forest classes

Forest_2030 <- sum(forest_2030_1)
plot(Forest_2030)

### Directions

flip_Forest_2030 <- t(flip(Forest_2030, direction = "h"))
plot(flip_Forest_2030)

flip_Forest_2030 <-flip(Forest_2030, direction = "h")
plot(flip_Forest_2030)

flip_Forest_2030 <- raster::raster(flip_Forest_2030)
#plot(flip_Forest_2030)

f_Forest_2030 <- flip(flip_Forest_2030, direction = "x")
plot(f_Forest_2030)

f_Forest_2030 <- t(flip(flip_Forest_2030, direction = "y"))
plot(f_Forest_2030)

f_Forest_2030 <- t(flip(flip_Forest_2030, direction = "x"))
plot(f_Forest_2030)


final_Forest_2030 <- flip(tf_Forest_2030, direction = "y")
plot(final_Forest_2030) 


## Save raster in results folder

raster::writeRaster(final_Forest_2030, "./results/SSP5_RCP85/2030_SSP5_RCP85_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif")

## Clean environment and plotslist all environment objects and remove
rm(list=ls()) 

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2050    ############################################### 

## Open netCFD file (ncdf4 packg)

c_2050 <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/SSP5_RCP85/GCAM_Demeter_LU_H_ssp5_rcp85_modelmean_2050.nc')

## Convert variables in spatial objet (terra pckg)

all_2050 <- terra::rast(c_2050$filename)

all_2050[[2]]
all_2050[[3]]
all_2050[[4]]
all_2050[[5]]
all_2050[[6]]
all_2050[[7]]
all_2050[[8]]
all_2050[[9]]
all_2050[[10]]
all_2050[[11]]
all_2050[[12]]

# Select only forest classes (PTF1 to PFT 11)

forest_2050_1 <- all_2050[[2:12]]

#plot(forest_2050_1)

## Sum forest classes

Forest_2050 <- sum(forest_2050_1)
plot(Forest_2050)


### Directions

flip_Forest_2050 <-t(flip(Forest_2050, direction = "h"))
plot(flip_Forest_2050)

flip_Forest_2050 <- flip(Forest_2050, direction = "h")
plot(flip_Forest_2050)

flip_Forest_2050 <- raster::raster(flip_Forest_2050)
plot(flip_Forest_2050)

f_Forest_2050 <- t(flip(flip_Forest_2050, direction = "y"))
plot(f_Forest_2050)

tf_Forest_2050 <- flip(flip_Forest_2050, direction = "x")
plot(tf_Forest_2050)

final_Forest_2050 <- t(flip(tf_Forest_2050, direction = "y"))
plot(final_Forest_2050) 


## Save raster in results folder

raster::writeRaster(final_Forest_2050, "./results/SSP5_RCP85/2050_SSP5_RCP85_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif")

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

