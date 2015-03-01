rm(list=ls())
setwd("Dropbox/QMSS/gitpages/data-viz/ebola")
microbes <- read.csv(file="Microbe-scope-bugs.csv", header=TRUE)

library(ggplot2)
library(magrittr)

# remove second header row, Anthrax and Malaria (P. falciparum) (not plotted)
microbes <- microbes[-c(1:2,18),]

# separate plottable columns from notes
plotcols <- c(2,4,5,9)
notes <- microbes[,-plotcols]
microbes <- microbes[,c(1,plotcols)]
rm(plotcols)
names(microbes) <- c("microbe","deadliness","contagiousness","transmission","type")

# drop percents in deadliness
microbes$deadliness %<>% sub("%","",.)

# convert deadliness and contagiousness to numeric data
microbes$deadliness %<>% as.numeric
microbes$contagiousness %<>% as.character %>% as.numeric

# correct missing data
microbes$transmission[microbes$microbe == "Cholera"] <- "airborne"

# collapse "airborne" and "airborne droplet" factors
microbes$transmission[microbes$transmission == "airborne droplet"] <- "airborne"

# clean up dropped factor levels
microbes %<>% droplevels

microbe.plot <- ggplot(microbes, aes(x=contagiousness, y=deadliness, color=transmission)) + 
  geom_point(aes(shape=type, size=1)) + 
  geom_text(aes(label=microbe,size=1,hjust=0,vjust=-1))
microbe.plot
