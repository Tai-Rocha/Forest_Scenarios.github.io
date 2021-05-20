# Forest_Scenarios
This is a repository with scripts to assess the forest land-use classes of [GCAM-Demeter](https://data.pnnl.gov/dataset/13192) dataset under different scenarios of climate change, based on a combination of Shared Socioeconomic Pathways (SSPs) and Representative Concentration Paths (RCPs), as designed by Coupled Model Intercomparison Project phase 6 (CMIP6) and future Intergovernmental Panel on Climate Change (IPCC) assessments. This evaluation is being done for three time slices (2020, 2030 and 2050).
#### Status : In progress

## Introdcution
Forest loss is one of the most causes of the threat of biodiversity, besides forests drives a key role in the climate earth system that also affects species diversity and the ecosystems services (Eyringet al. 2016, Maxwell et al. 2016, Ruiz-Benito et al. 2020). Thus, several initiatives to map Land-use and projects then in the future, mainly the availability of those products, are valuable for ecology, conservation, and other studies  (Ruiz Benito et al 2020, Vale et al 2021).

More details about CMIPs, LUH2 projetc, SSPs and RCPs ...


A recent Land-use product called GCAM-Demeter presents thee higher global spatial resolution (0.05 º) until now, with future projections (2015-2100) under different scenarios of climate change (combination of SSPS and RCPs) Consistent with the design of CMIP6.

The data are available for five GCMs (i.e., gfdl, hadgem, ipsl, miroc, and noresm), using the Global Change Analysis Model (GCAM) and a geospatial downscaling model (Demeter). Also includes the mean and standard deviation of the results driven by the five GCMs. More specifically, the data in each year include grid-explicit fraction (in percent) of each of the 32 plant functional types (PFTs) that are widely used in current Earth system models. The dataset has two versions: 1- firts version was developed based on a harmonized GCAM projections which have been adjusted to match the base map during the downscaling process and is more consistent with the PFT classification of the terrestrial vegetation types and recommended for use in Earth system models. 2- second version was based on the original GCAM projections.
More details about LU classes .....

Here I using mean of five GCMs and the first version (i.e the harmonized projection)  to assess the forest classes through time and scenarios .


## Methods

- [x] Sum Forest classes (codes PTF1 to PTF8)
- [x] Histograms of continuous raster derived from the Sum
- [ ] Choose of reference map (Maybe [Corpernicus](https://land.copernicus.eu/global/products/lc) ?) and justify.
- [ ] Set of thresholds and choose the best match with a reference map. It's a step that will require carefully studied/references to justify the choice of this threshold ( go on! :female_detective:	)


## Preliminary results 



![](https://i.imgur.com/ARsjGmU.png)

Fig.1 Forest amount for 2020, 2030 and 2050 respectively (Left to right) under SS1_RCP2.6. We exclude all 0 values for these histograms, considering just grids with forest.


## References





