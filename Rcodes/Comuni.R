library(terra)
library(sf)
library(tidyverse)



comuni <- st_read("Downloads/Limiti01012025_g/Com01012025_g/Com01012025_g_WGS84.shp") 


codici_df <- read_csv("Downloads/comuni.csv")


codici_df <- codici_df %>% rename(ISTAT = Istat)
comuni <- comuni %>% rename(ISTAT = PRO_COM_T)


comuni_selected <- comuni %>% filter(ISTAT %in% codici_df$ISTAT)


plot(comuni_selected['Shape_Area'])

