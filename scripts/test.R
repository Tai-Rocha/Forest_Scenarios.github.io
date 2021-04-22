
library(raster)

## Ok
lista <- list.files(path = "./results/", pattern = ".tif", recursive = T,  full.names = T) # list 12 layers

a <- stack(lista) # put together and plot
plot(a)

b <- a >=0.1 # make binary with treshold 0.1
plot(b)

## Work, but  create a folder ( in parental folder) for each file as follow :
#[1] "SSP5_RCP85_Forest_2050/SSP5_RCP85_Forest_2050.tif"
#[1] "SSP5_RCP85_Forest_2050/SSP5_RCP85_Forest_2050.tif"
#[1] "SSP5_RCP85_Forest_2050/SSP5_RCP85_Forest_2050.tif"
#[1] "SSP5_RCP85_Forest_2050/SSP5_RCP85_Forest_2050.tif"
#[1] "SSP5_RCP85_Forest_2050/SSP5_RCP85_Forest_2050.tif"
#[1] "SSP5_RCP85_Forest_2050/SSP5_RCP85_Forest_2050.tif". 


nms <- names(a) # correct names

for (i in 1:nlayers(b)) {
  writeRaster(b, filename = file.path(nms[i], paste0(nms[i], ".tif")), )
  #dir.create(nms[i], F, F)
  print(filename)
}

########################################################################################################### v1 it's ok but files are saved in the same folder 
subd <- list.dirs("./results/", full.names = T, recursive = F)

for (j in 1:length(subd)) {
  print(j)
}

for (i in 1:nlayers(b)) {
  writeRaster(b, filename = file.path(subd[[j]], paste0(nms[i], ".tif")), )
  #dir.create(nms[i], F, F)
  print(filename)
}



# I need a folder per SSP, where I have 3 files correpondin a years 20020, 2030 and 2050. 

## Not run, not work

b <- paste0(names(binary_01@data),"_bin.tif")

lapply(binary_01, FUN=function(x) {
  writeRaster(x, file.path(subd,"train", paste0(names(x), ".tif")), )
})
  
##

c <- paste0(names(binary_01@data),"_cont.tif")

lapply(cont_01, FUN=function(x) {
  writeRaster(x, file.path("./results/","train", paste0(names(c), ".tif")), )
})





