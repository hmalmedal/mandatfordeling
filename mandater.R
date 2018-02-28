library(readr)
library(dplyr)
source("saintelague.R")

pre2004 <- c(8, 15, 16, 8, 7, 7, 8, 6, 4, 5, 11, 17, 5, 10, 10, 6, 12, 6, 4) %>%
  as.integer()
mandatfordelingsdata <- read_csv("mandatfordelingsdata.csv",
                                 col_types = "ciii") %>%
  group_by(År) %>%
  mutate(Mandater = saintelague(Areal * 1.8 + Folketall, 169)) %>%
  ungroup() %>%
  mutate(Endring = diff(c(pre2004, Mandater), lag = 19))
