library(readr)
library(dplyr)
source("saintelague.R")

pre2004 <- c(8, 15, 16, 8, 7, 7, 8, 6, 4, 5, 11, 17, 5, 10, 10, 6, 12, 6, 4)
mandatfordelingsdata <- read_csv("mandatfordelingsdata.csv") %>%
  group_by(År) %>%
  mutate(Mandater = saintelague(169, Areal * 1.8 + Folketall)) %>%
  ungroup() %>%
  mutate(Endring = diff(c(pre2004, Mandater), lag = 19))
