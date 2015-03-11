# This function plots time series of air quality measurements for air quality.
# Inputs: quiz3(dataframe, month, total=FALSE)
# dataframe = name of the dataset, in this case airquality
# month = month of data to display (ie 5, 6, 7, 8 or 9). If everything is to be displayed, omit this argument.
# total: set total=TRUE if you want to display data for all months.
# examples: quiz3(airquality,6)   ,     quiz3(airquality, total=TRUE)


quiz3<-function(dataframe, month, total=FALSE){
  #load package
  require(ggplot2)
  
  #load data, remove NAs, remove unnecessary columns
  dataframe <- dataframe[complete.cases(dataframe)==TRUE,]
  dataframe <- subset(dataframe, select=c(Ozone, Month, Day))
  
  
  if(total==FALSE){
  
  #filter by month
  dataframe<- dataframe[dataframe$Month==month,]
  
  #create title for graph
  if(month==5){   titleVar <- c("NYC Air Quality for the month of May")}
  else if(month==6){   titleVar <- c("NYC Air Quality for the month of June")}
  else if(month==7){   titleVar <- c("NYC Air Quality for the month of July")}
  else if(month==8){   titleVar <- c("NYC Air Quality for the month of August")}
  else if(month==9){   titleVar <- c("NYC Air Quality for the month of September")}
  else {   titleVar <- c("NYC Air Quality")}
  
  }else{
    titleVar<-c("NYC Air Quality from May to September")
  }
  
  
  
  
  
  #plot
  plot1 <- ggplot(dataframe) +
            scale_x_continuous("Time (day)") +
            scale_y_continuous("Air Quality (Ozone Concentration)") +
            geom_line(aes(x=Day, y=Ozone)) +
            ggtitle(titleVar) +
            theme_bw()
  
  
  
  plot1
}


