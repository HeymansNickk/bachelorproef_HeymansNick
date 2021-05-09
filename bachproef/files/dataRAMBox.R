library(readr)
library(ggplot2)
TestRam <- read_table2("TestRam.csv", skip = 1)

names(TestRam)[names(TestRam) == "%memused"] <- "RAM"
ram <- TestRam[4]

RAMBoxPlot <- ggplot(ram,aes(x=RAM)) + geom_boxplot()

RAMBoxPlot <- RAMBoxPlot + theme(axis.text.y = element_blank(), axis.ticks.y = element_blank())

RAMBoxPlot <- RAMBoxPlot + labs(x = "Ram gebruik in %")

RAMBoxPlot