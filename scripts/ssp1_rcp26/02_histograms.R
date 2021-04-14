###################################################
## Script to build histograms for forest (GCAM)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021
###################################################

ssp126_forest <- raster("./results/ssp1_26_forest_1.tif")

plot(ssp126_forest)

ssp126_forest <- t(flip(ssp126_forest, direction = "y"))

plot(ssp126_forest)

writeRaster(ssp126_forest, "./results/ssp1_26_forest_final.tif")
