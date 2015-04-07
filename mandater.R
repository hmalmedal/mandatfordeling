library(readr)
library(dplyr, warn.conflicts = FALSE)
source('saintelague.R')

Mandatfordelingsdata <- read_csv("Mandatfordelingsdata.csv") %>%
  group_by(År) %>%
  mutate(Mandater = saintelague(169, Areal * 1.8 + Folketall))
