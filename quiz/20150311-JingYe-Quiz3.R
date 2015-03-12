# name: Jing Ye
# uni: jy2674
setwd("~/Documents/R_path")
library(maps)
data(airquality)
head(airquality)
library(reshape2)
d=melt(airquality,id.vars=c("Month","Day","Temp"))
d2=dcast(d,Month~variable,fun.aggregate=mean,na.rm=TRUE)
ts.plot(ts(d$Temp))
plot(d2[,1],xlab="month",ylab="Ozone-mean")
plot(d2[,2],xlab="month",ylab="Solar.R-mean")
plot(d2[,3],xlab="month",lab="Wind-mean")
names(d2)[2]
#------------------
# this function is to realize the code above
#------------------
plot_airquality<-function(data,climate_var){
    d=melt(data,id.vars=c("Month","Day",str(climate_var)))
    # plot climate_var according to time series
    ts.plot(ts(d$climate_var))
    d2=dcast(d,Month~variable,fun.aggregate=mean,na.rm=TRUE)
    # plot all other features beside climate_var
    n=names(d2)
    for (i in dim(d2)[2]-1){
        plot(d2[,i+1],xlab="month",ylab=n[i+1])
    }
}

plot_airquality(airquality,airquality$Temp)
