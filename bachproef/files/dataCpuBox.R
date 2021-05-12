# Boxplot van het cpu gebruik van de laatste 24h

library(readr)
library(ggplot2)
CpuData <- read_table2("SC1_CpuGebruikDag9.csv", skip = 1)

CpuData <- CpuData[8]
CpuUsage <- 100-CpuData

names(CpuUsage)[names(CpuUsage) == "%idle"] <- "Cpu"

cpuBoxPlot <- ggplot(CpuUsage, aes(x=Cpu)) + geom_boxplot()

cpuBoxPlot <- cpuBoxPlot+ theme(axis.text.y = element_blank(), axis.ticks.y = element_blank())

cpuBoxPlot <- cpuBoxPlot + labs(x = "CPU gebruik in %")

cpuBoxPlot