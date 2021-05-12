library(readr)
library(ggplot2)
TestRam <- read_table2("SC1_RAMGebruikDag9.csv", skip = 1)

names(TestRam)[names(TestRam) == "%memused"] <- "RAM"
ram <- TestRam[4]

summary(ram)
