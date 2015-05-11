if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
if (!require(plyr)) install.packages("plyr")
library(plyr)
if (!require(reshape)) install.packages("reshape")
library(reshape)

check <- function(data) {
  NAs <- sum(is.na(data))
  print(paste("NAs:", NAs))  # count NA's
  if (NAs > 0) 
    data[which(is.na(data)), ]  # Show NA's, if any.
  cc <- complete.cases(data)  # logical for each case (row)
  print(paste("Complete Cases:", all(cc)))  # Given a set of logical values, are all TRUE?
}

setwd("C:/Users/Dane/Desktop/QMSS_Final_Project")
#anes <- read.table(file="anes_timeseries_cdf_rawdata.txt", sep = "|", header=TRUE)
#write.csv(anes, file="./anes_data.csv")
anes <- read.csv(file="anes_data_II.csv")

vars1 <- names(anes) %in% c("VCF0004", "VCF0803", "vcf0009z")
anes_therm <- anes[vars1]

colnames(anes_therm)[names(anes_therm) == "VCF0004"] <-"year"
colnames(anes_therm)[names(anes_therm) == "VCF0803"] <-"party_id"
colnames(anes_therm)[names(anes_therm) == "vcf0009z"] <-"weight"
check(anes_therm$party_id)

anes_therm <- na.omit(anes_therm)

anes_therm_year <- aggregate(anes_therm$weight, by=list(anes_therm$year, anes_therm$party_id), FUN=sum)

colnames(anes_therm_year)[names(anes_therm_year) == "Group.1"] <-"year"
colnames(anes_therm_year)[names(anes_therm_year) == "Group.2"] <-"party_id"
colnames(anes_therm_year)[names(anes_therm_year) == "x"] <-"freq"

anes_therm_year <- subset(anes_therm_year, party_id>0)
anes_therm_year <- subset(anes_therm_year, party_id<9)

anes_therm_year$party_id<-as.character(anes_therm_year$party_id)
anes_therm_year$party_id[anes_therm_year$party_id=="1"] <- "1: Extremely Liberal"
anes_therm_year$party_id[anes_therm_year$party_id=="2"] <- "2: Liberal"
anes_therm_year$party_id[anes_therm_year$party_id=="3"] <- "3: Slightly Liberal"
anes_therm_year$party_id[anes_therm_year$party_id=="4"] <- "4: Moderate"
anes_therm_year$party_id[anes_therm_year$party_id=="5"] <- "5: Slightly Conservative"
anes_therm_year$party_id[anes_therm_year$party_id=="6"] <- "6: Conservative"
anes_therm_year$party_id[anes_therm_year$party_id=="7"] <- "7: Extremely Conservative"

#anes_therm_year <- aggregate(anes_therm_year$freq, by=list(anes_therm_year$year, anes_therm_year$party_id), FUN=sum)

colnames(anes_therm_year)[names(anes_therm_year) == "Group.1"] <-"year"
colnames(anes_therm_year)[names(anes_therm_year) == "Group.2"] <-"party_id"
colnames(anes_therm_year)[names(anes_therm_year) == "x"] <-"freq"

anes_total <- aggregate(anes_therm_year$freq, by=list(anes_therm_year$year), FUN=sum)

colnames(anes_total)[names(anes_total) == "Group.1"] <- "year"

d <- merge(anes_therm_year, anes_total, by.x="year", by.y="year")

d$party_ratio <- d$freq/d$x

var2 <- names(d) %in% c("year", "party_ratio")
j <- d[var2]
j <- aggregate(j$party_ratio, by=list(j$year), FUN=sum)

write.csv(d, file="anes_ideology_identification.csv")