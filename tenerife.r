install.packages("sen2r")
library(sen2r)

# Error: 
# Some missing packages are needed to run the GUI; please install them with
# the command
# > install.packages(c("leaflet", "leafpm", "mapedit", "shiny", "shinyFiles", "shinydashboard", "shinyjs", "shinyWidgets")) 

install.packages(c("leaflet", "leafpm", "mapedit", "shiny", "shinyFiles", "shinydashboard", "shinyjs", "shinyWidgets"))

install.packages("remotes")
library(remotes)
library(raster)
library(sp)

### Installing Sen2Cor
## is used to perform atmospheric correction of Sentinel-2 Level-1C products

library(sen2r)
check_sen2r_deps() #from this GUI a new Sen2Cor installation can be performed, or an existing environment can be linked to Sen2Cor.
# the check_sen2r_deps() can be used to install other dependencies as GDAL and aria2 (their installation is generally unrequired (they do not add relevant
# improvements to the package) and discouraged (errors could occur).)


### Sentinel bands
# 1. Band 1 -- Aerosol (443 nm)
# 2. Band 2 -- Blue (490 nm)
# 3. Band 3 -- Green (560 nm)
# 4. Band 4 -- Red (665 nm)
# 5. Band 5 -- Red-edge 1 (705 nm)
# 6. Band 6 -- Red-edge 2 (740 nm)
# 7. Band 7 -- Red-edge 3 (783 nm)
# 8. 
#    - on rasters with an output resolution < 20m:
#       Band 8 -- NIR (842 nm)
#   - on rasters with an output resolution >= 20m:
#        Band 8A -- narrow NIR (865 nm)
# 9. Band 9 -- Water vapour (940 nm)
# - on raster TOA (Top of Atmosphere)
# 10. Band 10 -- Cirrus (1375 nm)
# 11. Band 11 -- SWIR1 (1610 nm)
# 12. Band 12 -- SWIR2 (2190 nm)
# - on raster BOA (Bottom of atmosphere)
# 10. Band 11 -- SWIR1 (1610 nm)
# 11. Band 12 -- SWIR2 (2190 nm)



## Run sen2r interactively ##
sen2r()
# HTML interface
### First trial ###
# Type pf prpcessing: RAW files
#RAW Level-2A (Sentinel 2A and 2B)

