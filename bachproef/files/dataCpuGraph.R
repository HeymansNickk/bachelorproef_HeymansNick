library(readr)
CPUoverTime <- read_table2("CPUGebruik.csv", skip = 1)

#CPUoverTime <- CPUoverTime[1:8]
names(CPUoverTime)[names(CPUoverTime) == "00:00:02"] <- "Tijd"
names(CPUoverTime)[names(CPUoverTime) == "%idle"] <- "Cpu"

CPUGraph <- ggplot(CPUoverTime, aes(Tijd,Cpu,group = 1)) + geom_line()

CPUGraph <- CPUGraph + theme(axis.ticks.x = element_blank(), axis.text.x = element_blank())

CPUGraph