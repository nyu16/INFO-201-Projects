library("maps")
library("dplyr")
library("plotly")

df <- read.csv("data.csv", stringsAsFactors = FALSE)
NY <-
  map_data("county") %>% filter(region == "new york") %>% select(-order,-region)
df$County <- tolower(df$County)
data_2014 <- df %>% filter(Year == 2014)
colnames(NY)[which(colnames(NY) == "subregion")] <- "County"
