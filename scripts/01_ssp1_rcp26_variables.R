########################## Mariana M Vale & Tainá c Rocha 

#Library

library(raster)
library(ncdf4)
library(rgdal)

#Open NetCDF
nc_data <- nc_open('./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/GCAM_Demeter_LU_H_ssp1_rcp26_modelmean_2030.nc')

# Save the print(nc) dump to a text file
{
  sink('gcamtxt')
  print(nc_data)
  sink()
}
## #2 Get the coordinate reference system (CRS) to use for raster
epsg <- make_EPSG() # call the list of epsg
head(epsg) # search for epsg 4326 and put below
crs_object <-"+proj=longlat +datum=WGS84" #object of crs

#########

PTF0 <- nc_data$var[[1]]
data1 <- ncvar_get( nc_data, PTF0 )	# by default, reads ALL the data

data1 <- raster(data1)
#Set the coordinate reference system (CRS) and extent
crs(data1) <- crs_object # set crs of raster stack
extent(data1) <- c(-180,180, -90,90) # set extent

writeRaster(data1, "./results/teste_PTF0_ssp_rcp26.tif")


nc_data$var$PFT0
#######

       
       
  