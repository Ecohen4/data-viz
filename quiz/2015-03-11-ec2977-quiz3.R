air.plot <- function(data){

  data$date <- as.Date(paste(2014, data$Month, data$Day, sep="-"), format="%Y-%m-%d")

  library(reshape2)
  df <- melt(data, id.vars=c("date", "Month", "Day"))

  library(ggplot2)
  p <- ggplot(df, aes(x=date, y=value)) +
    facet_wrap(~variable, nrow=4, scale="free_y") +
    geom_line() +
    theme_bw()

  return(p)

}

# labs(y=levels(factor(df$variable)))
# scale_y_continuous(aes(name=levels(factor(df$variable))))
