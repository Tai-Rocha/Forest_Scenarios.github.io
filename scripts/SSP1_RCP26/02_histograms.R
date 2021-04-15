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
library(ggplot2)

############################################### SSP1_RCP26 ############################################## 

###############################################    2020    ############################################### 

F_2020 <- raster("./data/GCAM/Forest_classes/SSP1_RCP26/2020/Forest_2020_1.tif")

Forest_2020 <- t(flip(F_2020, direction = "y"))

plot(Forest_2020)

## Save final raster of forest

writeRaster(Forest_2020, "./results/SSP1_RCP26_Forest_2020.tif")

#####  Remove 0 values

values(Forest_2020)[values(Forest_2020) <= 0] = NA

plot(Forest_2020)

# Histogram

a <- hist(Forest_2020, breaks=30)
ahist <- data.frame(counts= a$counts,breaks = a$mids)
ggplot(ahist, aes(x = breaks, y = counts)) + 
  geom_bar(stat = "identity",fill='black',alpha = 0.8)#+
  #xlab("Forest Values")+ ylab("Frequency")+
  #scale_x_continuous(breaks = seq(-1,1,0.25),  ## without this you will get the same scale
                    # labels = seq(-1,1,0.25))    ## as hist (question picture)

tiff(file="SSP1_RCP26_2020_Histogram.tiff",
     width=9, height=7, units="in", res=150)
ggplot(ahist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8)+
  xlab("Forest Values")+ ylab("Frequency")+
  #scale_x_continuous(breaks = seq(0,1,10),
                    # labels = seq(0,1,10))+
  scale_fill_gradient(low="black", high="green")  

dev.off()

# Defalut R histogram
#hist(Forest_2020,
     #main = "Forest 2020 SSP1_RCP26",
     #xlab = "Forest values", ylab = "Frequency",
     #col = "springgreen")

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 

###############################################    2030    ############################################### 

F_2030 <- raster("./data/GCAM/Forest_classes/SSP1_RCP26/2030/Forest_2030_1.tif")

Forest_2030 <- t(flip(F_2030, direction = "y"))

plot(Forest_2030)

## Save final raster of forest

writeRaster(Forest_2030, "./results/SSP1_RCP26_Forest_2030.tif")

#####  Remove 0 values

values(Forest_2030)[values(Forest_2030) <= 0] = NA

plot(Forest_2030)

# Histogram

b <- hist(Forest_2030, breaks=30)
bhist <- data.frame(counts= b$counts,breaks = b$mids)
ggplot(bhist, aes(x = breaks, y = counts)) + 
  geom_bar(stat = "identity",fill='black',alpha = 0.8)#+
#xlab("Forest Values")+ ylab("Frequency")+
#scale_x_continuous(breaks = seq(-1,1,0.25),  ## without this you will get the same scale
# labels = seq(-1,1,0.25))    ## as hist (question picture)

tiff(file="SSP1_RCP26_2030_Histogram.tiff",
     width=9, height=7, units="in", res=150)
ggplot(bhist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8)+
  xlab("Forest Values")+ ylab("Frequency")+
  #scale_x_continuous(breaks = seq(0,1,10),
  # labels = seq(0,1,10))+
  scale_fill_gradient(low="black", high="green")  

dev.off()

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 


###############################################    2050    ############################################### 

F_2050 <- raster("./data/GCAM/Forest_classes/SSP1_RCP26/2050/Forest_2050_1.tif")

Forest_2050 <- t(flip(F_2050, direction = "y"))

plot(Forest_2050)

## Save final raster of forest

writeRaster(Forest_2050, "./results/SSP1_RCP26_Forest_2050.tif")

#####  Remove 0 values

values(Forest_2050)[values(Forest_2050) <= 0] = NA

plot(Forest_2050)

# Histogram

c <- hist(Forest_2050, breaks=30)
chist <- data.frame(counts= c$counts,breaks = c$mids)
ggplot(chist, aes(x = breaks, y = counts)) + 
  geom_bar(stat = "identity",fill='black',alpha = 0.8)#+
#xlab("Forest Values")+ ylab("Frequency")+
#scale_x_continuous(breaks = seq(-1,1,0.25),  ## without this you will get the same scale
# labels = seq(-1,1,0.25))    ## as hist (question picture)

tiff(file="SSP1_RCP26_2050_Histogram.tiff",
     width=9, height=7, units="in", res=150)
ggplot(chist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8)+
  xlab("Forest Values")+ ylab("Frequency")+
  #scale_x_continuous(breaks = seq(0,1,10),
  # labels = seq(0,1,10))+
  scale_fill_gradient(low="black", high="green")  

dev.off()

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

## Remove all plots

dev.off(dev.list()["RStudioGD"]) 



