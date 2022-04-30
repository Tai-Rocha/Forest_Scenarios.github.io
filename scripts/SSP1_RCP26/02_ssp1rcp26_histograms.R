###########################################################
## Script to build histograms for forest (GCAM)
## Here we select and sum just forest classes
## Author: Tainá Rocha
## Data: 14 April 2021 - 30 April 2022
## 4.0.2 R version
## 4.2.0 Rvesion
## Updating in 8 June :  4.1 R version and logr pckgs and rdtLite
## logr to create log files with several information 
## rdtLite: to collect provenace 
############################################################

#Library
library(raster)
library(ggplot2)

############################################### SSP1_RCP26 ############################################## 

###############################################    2020    ############################################### 


F_2020 <- raster("./results/SSP1_RCP26/2020_SSP1_RCP26_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif")

plot(F_2020)


#####  Remove 0 values

#values(F_2020)[values(F_2020) <= 0] = NA

F_2020[F_2020 <= 0] <- NA

plot(F_2020)
# Histogram

a <- hist(F_2020, breaks=30)
ahist <- data.frame(counts= a$counts,breaks = a$mids)
ggplot(ahist, aes(x = breaks, y = counts)) + 
  geom_bar(stat = "identity",fill='black',alpha = 0.8)#+
  #xlab("Forest Values")+ ylab("Frequency")+
  #scale_x_continuous(breaks = seq(-1,1,0.25),  ## without this you will get the same scale
                    # labels = seq(-1,1,0.25))    ## as hist (question picture)

tiff(file="2020_SSP1_RCP26_Forest_GCAM-Demeter_GCMsMean_Harmonized_Hist.tiff",
     width=9, height=7, units="in", res=150)
ggplot(ahist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8)+
  xlab("2020 SSP1 RCP 2.6 Forested Land")+ ylab("Number of Grids")+
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



###############################################    2030    ############################################### 

F_2030 <- raster("./results/SSP1_RCP26/2030_SSP1_RCP26_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif")

plot(F_2030)


#####  Remove 0 values

#values(F_2020)[values(F_2020) <= 0] = NA

F_2030[F_2030 <= 0] <- NA

plot(F_2030)
# Histogram

b <- hist(F_2030, breaks=30)
bhist <- data.frame(counts= b$counts,breaks = b$mids)
ggplot(bhist, aes(x = breaks, y = counts)) + 
  geom_bar(stat = "identity",fill='black',alpha = 0.8)#+
#xlab("Forest Values")+ ylab("Frequency")+
#scale_x_continuous(breaks = seq(-1,1,0.25),  ## without this you will get the same scale
# labels = seq(-1,1,0.25))    ## as hist (question picture)

tiff(file="2030_SSP1_RCP26_Forest_GCAM-Demeter_GCMsMean_Harmonized_Hist.tiff",
     width=9, height=7, units="in", res=150)
ggplot(bhist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8)+
  xlab("2030 SSP1 RCP 2.6 Forested Land")+ ylab("Number of Grids")+
  #scale_x_continuous(breaks = seq(0,1,10),
  # labels = seq(0,1,10))+
  scale_fill_gradient(low="black", high="green")  

dev.off()

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove


###############################################    2050    ############################################### 

F_2050 <- raster("./results/SSP1_RCP26/2050_SSP1_RCP26_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif")

plot(F_2050)


#####  Remove 0 values

#values(F_2020)[values(F_2020) <= 0] = NA

F_2050[F_2050 <= 0] <- NA

plot(F_2050)


# Histogram

c <- hist(F_2050, breaks=30)
chist <- data.frame(counts= c$counts,breaks = c$mids)
ggplot(chist, aes(x = breaks, y = counts)) + 
  geom_bar(stat = "identity",fill='black',alpha = 0.8)#+
#xlab("Forest Values")+ ylab("Frequency")+
#scale_x_continuous(breaks = seq(-1,1,0.25),  ## without this you will get the same scale
# labels = seq(-1,1,0.25))    ## as hist (question picture)

tiff(file="2050_SSP1_RCP26_Forest_GCAM-Demeter_GCMsMean_Harmonized_Hist.tiff",
     width=9, height=7, units="in", res=150)
cc <- ggplot(chist, aes(x = breaks, y = counts, fill = breaks)) + ## Note the new aes fill here
  geom_bar(stat = "identity",alpha = 0.8)+
  #xlab("2050 SSP1 RCP 2.6 Forested Land")+ ylab("Number of Grids")+
  #scale_x_continuous(breaks = seq(0,1,10),
  # labels = seq(0,1,10))+
  scale_fill_gradient(low="black", high="green")
  

cc +
  scale_x_continuous("2050 SSP1 RCP 2.6 Forested Land", limits = c(0, 100))+
  scale_y_continuous("Number of Grids",  breaks = c(0, 2500000, 500000, 750000, 1000000),label = c("0", "2500000", "500000", "750000", "1000000"))
  

dev.off()

## Clean environment and plots

rm(list=ls()) ## list all environment objects and remove

