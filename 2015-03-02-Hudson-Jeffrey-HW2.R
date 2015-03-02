rm(list=ls())
setwd("C:/Users/Jeff.Bernard/Dropbox/QMSS/gitpages/data-viz/ebola")
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

# jitter bird flu deadliness to avoid overlapping
microbes$deadliness[microbes$microbe == "Bird Flu (H5N1)"] <- 63

# collapse "airborne" and "airborne droplet" factors
microbes$transmission[microbes$transmission == "airborne droplet"] <- "airborne"

# clean up dropped factor levels
microbes %<>% droplevels

# log transform small values of deadliness
microbes$deadliness[microbes$deadliness == 0] <- 0.01
microbes$deadliness[microbes$deadliness < 10] %<>% log10 %>% multiply_by(10)

# full plot
microbe.plot <- ggplot(microbes, aes(x=contagiousness, y=deadliness, 
                                     colour=transmission,size=1)) + 
  geom_point() + 
  geom_text(aes(label=microbe,hjust=0,vjust=-1),show_guide=F) +
  guides(size=FALSE,colour=guide_legend(title="Primary Mode of Transmission",
                                       override.aes=list(shape=16,label=""))) +
  scale_y_continuous(name="Deadliness (case fatality rate)",
                     breaks=seq(-20,100,10),labels=paste0(c(0,0.1,1,seq(10,100,10)),"%")) +
  scale_x_continuous(name="Contagiousness (avg no. of people one person is likely to infect)",
                     breaks=seq(0,18,1))
microbe.plot

