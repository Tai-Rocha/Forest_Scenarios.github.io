###########################################################################
## Script to build histograms for Global Land Projection land use dataset for SSP1_RCP26 (2020, 2030 and 2050)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021 - 30 April 2022
## 4.0.2 R version
## 4.2.0 Revision
## Updating in 8 June :  4.1 R version and logr pckgs and rdtLite
## logr to create log files with several information 
## rdtLite: to collect provenace 
############################################################################

#Library
library(raster)
library(ggplot2)

############################################### SSP1_RCP26 ############################################## 

###############################################    2020    ############################################### 


FGLP_2020 <- raster("results/Global_Land_Projection/SSP1_RCP26/2020_SSP1_RCP26_Forest_Global_Land_Projection.tif")

plot(FGLP_2020)

# Histogram

#Hist_2020 <- hist(FGLP_2020)

## Setting to better plot

ahist <- data.frame (counts  = c(72343608, 62260617),
                  breaks = c(0, 1)
)

tiff(file="2020_SSP1_RCP26_Forest_Global_Land_Projection_Hist.tiff",
     width=9, height=7, units="in", res=150)
o <- ggplot(ahist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8, width = 0.5, position = position_dodge(0.05))+
  xlab("2020 SSP1 RCP 2.6 Non Forested (black bar) X Forested Land (green bar)") + ylab("Number of Grids")+
  #scale_x_continuous(breaks = seq(0,1),
  #                   labels = seq(0, 1))+
  scale_fill_gradient(low="black", high="darkgreen")  

 o + geom_text(aes(label = counts), position = position_stack(0.95), color = "white") + 
  guides(fill="none")


dev.off()

dev.off(dev.list()["RStudioGD"]) 

## list all environment objects and remove
rm(list=ls()) 


###############################################    2030    ############################################### 

FGLP_2030 <- raster("results/Global_Land_Projection/SSP1_RCP26/2030_SSP1_RCP26_Forest_Global_Land_Projection.tif")

plot(FGLP_2030)

# Histogram

#Hist_2030 <- hist(FGLP_2030)

## Setting to better plot

bhist <- data.frame (counts  = c(72024924, 62579301),
                     breaks = c(0, 1)
)

tiff(file="2030_SSP1_RCP26_Forest_Global_Land_Projection_Hist.tiff",
     width=9, height=7, units="in", res=150)
p <- ggplot(bhist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8, width = 0.5, position = position_dodge(0.05))+
  xlab("2030 SSP1 RCP 2.6 Non Forested (black bar) X Forested Land (green bar)") + ylab("Number of Grids")+
  #scale_x_continuous(breaks = seq(0,1),
  #                   labels = seq(0, 1))+
  scale_fill_gradient(low="black", high="darkgreen")  

p + geom_text(aes(label = counts), position = position_stack(0.95), color = "white") + 
  guides(fill="none")

dev.off()

dev.off(dev.list()["RStudioGD"]) 

## list all environment objects and remove
rm(list=ls()) 


###############################################    2050    ############################################### 

FGLP_2050 <- raster("results/Global_Land_Projection/SSP1_RCP26/2050_SSP1_RCP26_Forest_Global_Land_Projection.tif")

plot(FGLP_2050)

# Histogram

#Hist_2050 <- hist(FGLP_2050)

## Setting to better plot

chist <- data.frame (counts  = c(71783675, 62820550),
                     breaks = c(0, 1)
)

tiff(file="2050_SSP1_RCP26_Forest_Global_Land_Projection_Hist.tiff",
     width=9, height=7, units="in", res=150)
q <- ggplot(chist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8, width = 0.5, position = position_dodge(0.05))+
  xlab("2050 SSP1 RCP 2.6 Non Forested (black bar) X Forested Land (green bar)") + ylab("Number of Grids")+
  #scale_x_continuous(breaks = seq(0,1),
  #                   labels = seq(0, 1))+
  scale_fill_gradient(low="black", high="darkgreen")  

q  + geom_text(aes(label = counts), position = position_stack(0.95), color = "white") + 
  guides(fill="none")

dev.off()

dev.off(dev.list()["RStudioGD"]) 

## list all environment objects and remove
rm(list=ls()) 

######### End
