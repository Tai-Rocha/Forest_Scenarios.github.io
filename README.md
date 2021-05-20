# Forest_Scenarios
This is a repository with scripts to assess the forest land-use classes of [GCAM-Demeter](https://data.pnnl.gov/dataset/13192) dataset under different scenarios of climate change, based on a combination of Shared Socioeconomic Pathways (SSPs) and Representative Concentration Paths (RCPs), as designed by Coupled Model Intercomparison Project phase 6 (CMIP6) and future Intergovernmental Panel on Climate Change (IPCC) assessments. This evaluation is being done for three time slices (2020, 2030 and 2050).

#### Status : In progress

## Introdcution
<p align="justify">Forest loss is one of the most causes of the threat of biodiversity, besides forests drives a key role in the climate earth system that also affects species diversity and the ecosystems services (Eyringet al. 2016, Maxwell et al. 2016, Ruiz-Benito et al. 2020). Thus, several initiatives to map Land-use and projects then in the future, mainly the availability of those products, are valuable for ecology, conservation, and other studies  (Ruiz Benito et al 2020, Vale et al 2021).</p>

More details about CMIPs, LUH2 projetc, SSPs and RCPs ...


<p align="justify">A recent Land-use product called GCAM-Demeter presents thee higher global spatial resolution (0.05 º) until now, with future projections (2015-2100) under different scenarios of climate change (combination of SSPS and RCPs) Consistent with the design of CMIP6.</p>

<p align="justify">The data are available for five GCMs (i.e., gfdl, hadgem, ipsl, miroc, and noresm), using the Global Change Analysis Model (GCAM) and a geospatial downscaling model (Demeter). Also includes the mean and standard deviation of the results driven by the five GCMs. More specifically, the data in each year include grid-explicit fraction (in percent) of each of the 32 plant functional types (PFTs) that are widely used in current Earth system models. The dataset has two versions: 1- firts version was developed based on a harmonized GCAM projections which have been adjusted to match the base map during the downscaling process and is more consistent with the PFT classification of the terrestrial vegetation types and recommended for use in Earth system models. 2- second version was based on the original GCAM projections.</p>
More details about LU classes .....

<p align="justify">Here I using mean of five GCMs and the first version (i.e the harmonized projection)  to assess the forest classes through time and scenarios. </p>


## Methods

- [x] Sum Forest classes (codes PTF1 to PTF8)
- [x] Histograms of continuous raster derived from the Sum
- [ ] Histograms for ecoregions (Neotropics, Afrotropics etc..)
- [ ] Choose of reference map (Maybe [Corpernicus](https://land.copernicus.eu/global/products/lc) ?) and justify.
- [ ] Set of thresholds and choose the best match with a reference map. It's a step that will require carefully studied/references to justify the choice of this threshold ( go on! :female_detective:	)
- [ ] Histograms for for binay maps and considering ecoregions


## Preliminary results 
<p align="justify">Forest amount for 2020, 2030 and 2050 respectively (Left to right). Forest values axis range from 0-100, however I exclude all 0 values, considering just grids with forest. Frenquency axis range from 0 - 1000000, represents the number of times that specif Forest values occur. Black bars evidencing less forest and green bars more forest.</p>
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





