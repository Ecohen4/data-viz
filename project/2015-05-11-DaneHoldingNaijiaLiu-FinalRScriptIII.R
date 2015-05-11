setwd("/Users/NaijiaLiu/Downloads/anes_timeseries_cdf")
anes <- read.table(file="anes_timeseries_cdf_rawdata.txt", sep = "|", header = TRUE)
write.csv(anes, file="./anes.csv")
d <- read.csv(file.choose())


Change the name of variables:
colnames(d)[names(d) == "VCF0209"] <- "bigbusiness"
colnames(d)[names(d) == "VCF0213"] <- "military"
colnames(d)[names(d) == "VCF0214"] <- "policemen"
colnames(d)[names(d) == "VCF0227"] <- "asianamerican"
colnames(d)[names(d) == "VCF0229"] <- "enviromentalist"
colnames(d)[names(d) == "VCF0230"] <- "antiabortion"
colnames(d)[names(d) == "VCF0231"] <- "federalgov"
colnames(d)[names(d) == "VCF0253"] <- "feminists"
colnames(d)[names(d) == "VCF9003"] <- "evangelical"
colnames(d)[names(d) == "VCF9005"] <- "supremecourt"
colnames(d)[names(d) == "VCF0301"] <- "partyid"
colnames(d)[names(d) == "VCF0004"] <- "year"
colnames(d)[names(d) == "VCF0207"] <- "white"
colnames(d)[names(d) == "VCF0206"] <- "black"
colnames(d)[names(d) == "VCF0217"] <- "chicano"
colnames(d)[names(d) == "VCF0232"] <- "Gayles"
colnames(d)[names(d) == "VCF0220"] <- "pplonwelfare"


Calculate the standard deviation for each year and rename the varibles:
library(reshape)
stdbigbus <- aggregate(d$bigbusiness, by=list(d$year), FUN="sd")
stdbigbus <- rename(stdbigbus, c(x="stdbigbus"))

stdmilitary <- aggregate(d$military, by=list(d$year), FUN="sd")
stdmilitary <-rename(stdmilitary,c(x="stdmilitary"))

stdpolice <- aggregate(d$policemen, by=list(d$year), FUN="sd")
stdpolice <- rename(stdpolice, c(x="stdpolice"))

stdasian <- aggregate(d$asianamerican, by=list(d$year), FUN="sd")
stdasian <-rename(stdasian,c(x="stdasian"))

stdenviroment <- aggregate(d$enviromentalist, by=list(d$year), FUN="sd")
stdenviroment <-rename(stdenviroment,c(x="stdenviroment"))

stdantiabort <- aggregate(d$antiabortion, by=list(d$year), FUN="sd")
stdantiabort <-rename(stdantiabort,c(x="stdantiabort"))

stdfederalgov <- aggregate(d$federalgov, by=list(d$year), FUN="sd")
stdfederalgov <-rename(stdfederalgov,c(x="stdfederalgov"))

stdfeminist <- aggregate(d$feminists, by=list(d$year), FUN="sd")
stdfeminist <- rename(stdfeminist,c(x="stdfeminist"))

stdsupremecourt <- aggregate(d$supremecourt, by=list(d$year), FUN="sd")
stdsupremecourt <- rename(stdsupremecourt,c(x="stdsupremecourt"))

stdparty <- aggregate(d$partyid, by=list(d$year), FUN="sd")
stdparty <- rename(stdparty,c(x="stdparty"))


stdwhite <- aggregate(d$white, by=list(d$year), FUN="sd")
stdwhite <- rename(stdwhite,c(x="stdwhite"))


stdblack <- aggregate(d$black, by=list(d$year), FUN="sd")
stdblack <- rename(stdblack, c(x="stdblack"))


stdchicano <- aggregate(d$chicano, by=list(d$year), FUN="sd")
stdchicano <- rename(stdchicano,c(x="stdchicano"))

stdGayles <- aggregate(d$Gayles, by=list(d$year), FUN="sd")
stdGayles <- rename(stdGayles,c(x="stdGayles"))

stdpplonwelfare <- aggregate(d$pplonwelfare, by=list(d$year), FUN="sd")
stdpplonwelfare <- rename(stdpplonwelfare,c(x="stdpplonwelfare"))


Merge the data frames into one dataset
j <- merge(stdbigbus,stdmilitary, by="Group.1")
j <- merge(j, stdpolice, by="Group.1")
j<- merge(j, stdasian, by="Group.1")
j<- merge(j, stdenviroment, by="Group.1")
j<- merge(j, stdantiabort, by="Group.1")
j<- merge(j, stdfederalgov, by="Group.1")
j<- merge(j, stdfeminist, by="Group.1")
j<- merge(j, stdsupremecourt, by="Group.1")
j<- merge(j, stdwhite, by="Group.1")
j<- merge(j, stdblack, by="Group.1")
j<- merge(j, stdchicano, by="Group.1")
j<- merge(j, stdGayles, by="Group.1")
stddev0422<- merge(j, stdpplonwelfare, by="Group.1")
write.csv(stddev0422, file="./datadata.csv")