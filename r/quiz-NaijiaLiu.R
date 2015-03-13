library("maps")
data(airquality)
names(airquality)
class(airquality$Month)
class(airquality$Ozone)


f1<-function(x,y){
  z=log(x+y)
}
WindTemp<-f1(airquality$Temp,airquality$Wind)

library(QMSS)
library(ggplot2)

p<-ggplot(data=airquality, aes(x=Day, y=WindTemp, colour=Month)) +geom_point(size=3)

print(p)

