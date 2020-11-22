library(sf)
library(tidytransit)
library(tmap)
setwd("C:/Users/Danie/Desktop/salisburytransit/")
local_gtfs_path <- system.file("extdata", "C:/Users/Danie/Desktop/salisburytransit/salisburyredsgtfs.zip", package = "tidytransit")
sreds <- read_gtfs("C:/Users/Danie/Desktop/salisburytransit/salisburyredsgtfs.zip")
summary(sreds)
plot(sreds)
salis_stops_sf <- stops_as_sf(sreds$stops)
plot(salis_stops_sf)


lsoas <- st_read(dsn ="C:/Users/Danie/Desktop/LSOA2011/Lower_Layer_Super_Output_Area__December_2011__EW_BSC_V2.shp")
tmap_mode("view")
  tm_shape(lsoas)+tm_fill() + tm_borders()+
  tm_basemap(leaflet::providers$CartoDB)
