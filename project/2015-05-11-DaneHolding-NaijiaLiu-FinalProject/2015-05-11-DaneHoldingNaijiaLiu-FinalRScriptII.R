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

vars1 <- names(anes) %in% c("VCF0004", "VCF0301", "vcf0009z")
anes_therm <- anes[vars1]

colnames(anes_therm)[names(anes_therm) == "VCF0004"] <-"year"
colnames(anes_therm)[names(anes_therm) == "VCF0301"] <-"party_id"
colnames(anes_therm)[names(anes_therm) == "vcf0009z"] <-"weight"
check(anes_therm$party_id)

anes_therm <- na.omit(anes_therm)

anes_therm_year <- aggregate(anes_therm$weight, by=list(anes_therm$year, anes_therm$party_id), FUN=sum)

colnames(anes_therm_year)[names(anes_therm_year) == "Group.1"] <-"year"
colnames(anes_therm_year)[names(anes_therm_year) == "Group.2"] <-"party_id"
colnames(anes_therm_year)[names(anes_therm_year) == "x"] <-"freq"

anes_therm_year <- subset(anes_therm_year, party_id>0)

anes_therm_year$party_id<-as.character(anes_therm_year$party_id)
anes_therm_year$party_id[anes_therm_year$party_id=="1"] <- "1: Strong Democrat (blue)"
anes_therm_year$party_id[anes_therm_year$party_id=="2"] <- "2: Weak Democrat (blue)"
anes_therm_year$party_id[anes_therm_year$party_id=="3"] <- "3: Ind. - Dem. (Gray-blue)"
anes_therm_year$party_id[anes_therm_year$party_id=="4"] <- "4: Independent (Gray)"
anes_therm_year$party_id[anes_therm_year$party_id=="5"] <- "5: Ind. - Rep. (Gray-red)"
anes_therm_year$party_id[anes_therm_year$party_id=="6"] <- "6: Weak Republican (Red)"
anes_therm_year$party_id[anes_therm_year$party_id=="7"] <- "7: Strong Republican (Red)"

anes_total <- aggregate(anes_therm_year$freq, by=list(anes_therm_year$year), FUN=sum)

colnames(anes_total)[names(anes_total) == "Group.1"] <- "year"

d <- merge(anes_therm_year, anes_total, by.x="year", by.y="year")

d$party_ratio <- d$freq/d$x

colnames(d)[names(d) == "party_id"] <-"group"
colnames(d)[names(d) == "year"] <-"date"
colnames(d)[names(d) == "party_ratio"] <-"value"

d$alignment[d$group=="1: Strong Democrat (blue)"] <- "Democrat"
d$alignment[d$group=="2: Weak Democrat (blue)"] <- "Democrat"
d$alignment[d$group=="3: Ind. - Dem. (Gray-blue)"] <- "Independent"
d$alignment[d$group=="4: Independent (Gray)"] <- "Independent"
d$alignment[d$group=="5: Ind. - Rep. (Gray-red)"] <- "Independent"
d$alignment[d$group=="6: Weak Republican (Red)"] <- "Republican"
d$alignment[d$group=="7: Strong Republican (Red)"] <- "Republican"

q <- aggregate(d$value, by=list(d$date, d$alignment), FUN=sum)
q <- cast(q, Group.1~Group.2)
colnames(q)[names(q) == "Group.1"] <-"date"

d <- merge(d, q, by.x="date", by.y="date")

party_control <- read.csv(file="federal_control.csv")

d <- merge(d, party_control, by="date")

write.csv(d, file="anes_party_identification.csv")