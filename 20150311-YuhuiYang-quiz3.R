# w4063 midterm quiz yy2553 Yuhui Yang
data(airquality)
# fix(airquality)
data=airquality
#?airquality
#names(airquality)
str(airquality)
wind.in.each.month<-function(month,day,wind){
	par(mfrow=c(2,3))
	
	   plot(day[1:31],wind[1:31],type='b',main='Wind in May',pch=19,xlab='May',ylab='wind',col='red')	
	
	
	   plot(day[32:61],wind[32:61],type='b',main='Wind in June',pch=19,xlab='June',ylab='wind',col='red')	
	
	
	   plot(day[62:92],wind[62:92],type='b',main='Wind in July',pch=19,xlab='July',ylab='wind',col='red')	
	
	
	   plot(day[93:123],wind[93:123],type='b',main='Wind in August',pch=19,xlab='August',ylab='wind',col='red')	
	
	
	   plot(day[124:153],wind[124:153],type='b',main='Wind in September',pch=19,xlab='September',ylab='wind',col='red')	
	

}

wind.in.each.month(data$Month,data$Day,data$Wind)