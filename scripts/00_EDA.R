library(here)
library(tidyverse)

hops_full <- read.csv(here("data/raw/data_2017_v2.csv"))
hops <- read.csv(here("data/processed/cost_data.csv"))

#Pull the columns we want
hops_clean <- hops %>% select(Field.ID, 
                              Year, 
                              Month,
                              Centroid.Lat,
                              Centroid.Long,
                              Area_Hectares,
                              Sprays,
                              Mildew.Incidence,
                              Initial.Strain,
                              Susceptibility.to.R6.Strains,
                              Susceptibility.to.non.R6.Strains) %>% 
  janitor::clean_names()

#Make race and initial strain more clear
hops_clean <- hops_clean %>% 
  mutate(plant_type = if_else(susceptibility_to_non_r6_strains == 1, "non-R6", "R6"),
         initial_strain = if_else(initial_strain == 1, "V6", "non-V6"), 
         date = my(paste(month, year)))

write.csv(hops_clean, here("data/processed/clean_summary.csv"))
