# Forest_Scenarios
Repository of workflow to get and assess the forest land-use classes of [GCAM-Demeter](https://data.pnnl.gov/dataset/13192) dataset under different scenarios of global change.

### Study and code author : Tainá Rocha

#### Status : In progress

## Introdcution
<p align="justify"> Forest loss is one of the most threats to biodiversity, forest lands drive a key role in the climate earth system that also affects species diversity and ecosystem services (Eyringet al. 2016, Maxwell et al. 2016, Ruiz-Benito et al. 2020). Therefore, several initiatives had been driven to map land-use time series, mainly projections into the future. The availability of those products is valuable for earth science, ecology, conservation, and other research fields once land-use land-cover data are important predictors of species occurrence and biodiversity threat (Ruiz Benito et al. 2020, Vale et al. 2021).</p>


<p align="justify">A recent land-use product called GCAM-Demeter presents the highest global spatial resolution (0.05 º) until now (Chean et al 2020).  It provided current and future projections (2015-2100) under different scenarios of climate change (Shared Socioeconomic Pathways (SSPs) and Representative Concentration Pathways (RCP)) and according to the most recent framework of Coupled Model Intercomparison Project phase 6 (CMIP6). The data in each year include grid-explicit fraction (in percent) of each of the 32 plant functional types (PFTs) that are widely used in current Earth system models. The complete dataset is available for five General Circulation Models (GCMs): gfdl, hadgem, ipsl, miroc, and noresm. Also includes the mean and standard deviation of those GCMs (Chen et al., 2020)</p>

<p align="justify">Although the valuable contribution of the GCAM-Demeter to provide those data, it is compressed in NetCDF format, a complex file format that needs management to become usable in several analyses, especially in ecology and biodiversity analyses (Vale et al., 2021 and reference therein). Here I manage the mean of five GCMs (harmonized projection)  based on  the sum analysis of all forest classes (codes PTF1 to PTF11- described in README) considering:

1- Global Extent at  0.05-degree resolution <br>

2- Years 2020, 2030 and 2050 <br>

3- SSPs and RCP as follow: SSP1_RCP2, SSP2_RCP45, SSP4_RCP6, SSP5_RCP85 <br>

The goals are to assess quantitatively the forest land under different scenarios of global change and make these data available in the Tag Image File Format (TIFF) format that is more friendly and useable to incorporate in several spatial analyses mainly for ecology, biodiversity, and conservation purposes .

The output can be identified by its file name. Example: `2020_SSP5_RCP85_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif `.

<p align="justify"> Although the valuable contribution of the GCAM-Demeter provides those data, those data are compressed in NetCDF format, a complex file format, which needs management to become usable in several analyses, especially in ecology and biodiversity analyses (Vale et al 2021 and reference therein). Here I manage the mean of five GCMs and the first version (i.e the harmonized projection)  to assess the forest classes summing all Forest classes (codes PTF1 to PTF8, described in Methods) considering:

1- Global Extent at  0.05-degree resolution <br>
2- Years 2020, 2030 and 2050 <br>
3- Shared Socioeconomic Pathways (SSPs) and Representative Concentration Pathways (RCP) as follow: SSP1_RCP2, SSP2_RCP45, SSP4_RCP6, SSP5_RCP85 <br>

  The goals are to assess quantitatively the forest land under different scenarios of global change and make these data available in the Tag Image File Format (TIFF) format that is more friendly and useable to incorporate in several spatial analyses mainly for ecology, biodiversity, and conservation purposes.  The output can be identified by its file name. Example: `2020_SSP5_RCP85_Forest_GCAM-Demeter_GCMsMean_Harmonized.tif` . </p>


## Methods

- [x] Downloa the NetCDF files  (the mean of five GCMs and the first version- the harmonized projection)  freely available at [DataHub](https://release.datahub.pnnl.gov/released_data/1190).
- [x] Select and sum forest classes - Global extent 
      
       PFT1- Needleleaf evergreen tree: temperate
       PFT2- Needleleaf evergreen tree: boreal
       PFT3- Needleleaf deciduous tree: boreal
       PFT4- Broadleaf evergreen tree: tropical
       PFT5- Broadleaf evergreen tree: temperate
       PFT6- Broadleaf deciduous tree: tropical
       PFT7- Broadleaf deciduous tree: temperate
       PFT8- Broadleaf deciduous tree: boreal
       PFT9- Broadleaf evergreen shrub: temperate
       PFT10- Broadleaf deciduous shrub: temperate
       PFT11- Broadleaf deciduous shrub: boreal
      
- [x] Histograms of continuous raster derived from the Sum- Global
- [ ] Histograms for ecoregions (Neotropics, Afrotropics etc..)
- [ ] Choose of reference map (Maybe [Corpernicus](https://land.copernicus.eu/global/products/lc) ?) and justify.
- [ ] Set of thresholds and choose the best match with a reference map. It's a step that will require carefully studied/references to justify the choice of this threshold ( go on! :female_detective:	)
- [ ] Histograms for binay layers derived from treshold and for ecoregions

The management and the sum data analysis were done using ncdf4 and raster packages in the R environment (R Core Team 2020, Pierce 2019; Hijmans et al. 2020).  

## Preliminary results 
<p align="justify">Forest amount for 2020, 2030 and 2050 respectively (Left to right in Figs) for whole globe. Forest values axis range from 0-100, however I exclude all 0 values, considering just grids with forest. Frenquency axis range from 0 - 1000000, represents the number of times that specif Forest values occur. Black bars evidencing less forest and green bars more forest.</p>
<br /> 
<p align="justify">Ps.: Need to review carefully the data because there are more forests in the scenario SSP5_RCP865 (worst) than RCP4_RCP6. Is it true? If it's true, why?    (go one ! :female_detective: )</p>
<br /> 
<br /> 
<br /> 



![](https://i.imgur.com/3Rg8B5n.png)
Fig.1 SSP1_RCP2.6
<br /> 
<br /> 
<br /> 

![](https://i.imgur.com/VodtnoE.png)
Fig.2 SSP2_4.5
<br /> 
<br /> 
<br /> 

![](https://i.imgur.com/XLdR95v.png)
Fig.3 SSP4_RCP6
<br /> 
<br /> 
<br /> 

![](https://i.imgur.com/2YOjzuK.png)
Fig.4 SSP5_RCP8.5
## References


Chen, M., Vernon, C. R., Graham, N. T., Hejazi, M., Huang, M., Cheng, Y., & Calvin, K. (2020). Global land use for 2015–2100 at 0.05 resolution under diverse socioeconomic and climate scenarios. Scientific Data, 7(1), 1-11. 

Hijmans, R. J. (2020). raster: Geographic Data Analysis and Modeling (R package version 3.3-13)[Computer software]. Retrieved form https://CRAN. R-project. org/package= raster.

Pierce, D. (2019). ncdf4: Interface to Unidata netCDF (Version 4 or earlier) Format Data Files. R package version 1.16.

Team, R. C. (2020). R: A language and environment for statistical computing.

Vale, M. M., Lima-Ribeiro, M. S., & Rocha, T. C. (2021). GLOBAL LAND-SE AND LAND-COVER DATA: HISTORICAL, CURRENT AND FUTURE SCENARIOS. Biodiversity Informatics, 16, 2021, pp. 28-38.


