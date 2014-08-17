Mandatfordelingsdata <-
  read.csv("Mandatfordelingsdata.csv", sep = ",")
Mandatfordelingsdata <- transform(Mandatfordelingsdata,
                                  År = as.factor(År))
source('saintelague.R')
Mandatfordelingsdata$Mandater <-
  c(
    saintelague(169,
                Mandatfordelingsdata[
                  Mandatfordelingsdata$År == 2004, ]$Areal * 1.8
                +
                  Mandatfordelingsdata[
                    Mandatfordelingsdata$År == 2004, ]$Folketall),
    saintelague(169,
                Mandatfordelingsdata[
                  Mandatfordelingsdata$År == 2012, ]$Areal * 1.8
                +
                  Mandatfordelingsdata[
                    Mandatfordelingsdata$År == 2012, ]$Folketall),
    saintelague(169,
                Mandatfordelingsdata[
                  Mandatfordelingsdata$År == 2020, ]$Areal * 1.8
                +
                  Mandatfordelingsdata[
                    Mandatfordelingsdata$År == 2020, ]$Folketall),
    saintelague(169,
                Mandatfordelingsdata[
                  Mandatfordelingsdata$År == 2028, ]$Areal * 1.8
                +
                  Mandatfordelingsdata[
                    Mandatfordelingsdata$År == 2028, ]$Folketall),
    saintelague(169,
                Mandatfordelingsdata[
                  Mandatfordelingsdata$År == 2036, ]$Areal * 1.8
                +
                  Mandatfordelingsdata[
                    Mandatfordelingsdata$År == 2036, ]$Folketall)
  )
