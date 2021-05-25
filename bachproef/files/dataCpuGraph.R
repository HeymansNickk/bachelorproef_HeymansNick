library(readr)
library(ggplot2)
CPUoverTime <- read_table2("SC1_CpuGebruikDag9.csv", skip = 1)
CPUoverTime <- head(CPUoverTime, - 2)

#CPUoverTime <- CPUoverTime[1:8]
names(CPUoverTime)[names(CPUoverTime) == "00:00:01"] <- "Tijd"
names(CPUoverTime)[names(CPUoverTime) == "%idle"] <- "Cpu"

CPUoverTime[8] <- 100 - CPUoverTime[8]

CPUGraph <- ggplot(CPUoverTime, aes(Tijd,Cpu,group = 1)) + geom_line()

CPUGraph <- CPUGraph + theme(axis.ticks.x = element_blank(), axis.text.x = element_blank())

CPUGraph <- CPUGraph + coord_cartesian(ylim = c(5, 15))

CPUGraph
