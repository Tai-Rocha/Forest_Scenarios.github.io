#######
#tests 
#######

library(RNetCDF)
library(raster)
library(rgdal)

filess <- list.files("./data/GCAM/RAW/93d4aa096b15491b1ba136b46d8063cdca59d253c75d59791b4d4cb6f8a1ae91/Project ID 68344/GCAM-Demeter/GCAM-Harmonized/Mean_Std/", full.names=TRUE)
epsg <- make_EPSG() # call the list of epsg
head(epsg) # search for epsg 4326 and put below
crs_object <-"+proj=longlat +datum=WGS84" #object of crs


s <- stack(filess)

rnc <- writeRaster(s, filename="x", bylayer=TRUE, format="GTiff")}


for (f in filess) {
  r <- raster(f)
  crs(r) <- crs_object # set crs of raster stack
  extent(r) <- c(-180,180, -90,90) # set extent
  fout <- extension(f, '.tif')
  r <- writeRaster(r, filename=fout, datatype='FLT4S')
}
