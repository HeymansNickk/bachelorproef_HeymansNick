library(readr)
RAMUsage <- read_table2("TestRam.csv", skip = 2)

RAMUsage <- RAMUsage[-c(146, 147), ]
names(RAMUsage)[names(RAMUsage) == "%memused"] <- "RAM"
names(RAMUsage)[names(RAMUsage) == "00:00:02"] <- "Tijd"
#sort(RAMUsage[Tijd])

RAMGraph <- ggplot(RAMUsage, aes(Tijd,RAM,group = 1)) + geom_line() + theme(axis.ticks.x = element_blank(), axis.text.x = element_blank())

RAMGraph