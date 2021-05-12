library(readr)
library(ggplot2)
RAMUsage <- read_table2("SC1_RAMGebruikDag9.csv", skip = 2)


RAMUsage <- RAMUsage[-c(146, 147), ]
names(RAMUsage)[names(RAMUsage) == "%memused"] <- "RAM"
names(RAMUsage)[names(RAMUsage) == "00:00:01"] <- "Tijd"
#sort(RAMUsage[Tijd])

RAMGraph <- ggplot(RAMUsage, aes(Tijd,RAM,group = 1)) + geom_line() 

RAMGraph <- RAMGraph + theme(axis.ticks.x = element_blank(), axis.text.x = element_blank())
RAMGraph