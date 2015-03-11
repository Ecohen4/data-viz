# Quiz 3: Plot time series of air quality from airquality dataset using function call

airPlotter <- function(StartDay, EndDay, col) {
        # StartDay is days from May 1st, with May 1st being day 1
        # EndDay is days from May 1st, with September 30 being dat 153 (last), EndDay has to be larger than StartDay
        # col is colour of plot
        
        # Check / Defaults
        if (StartDay <= 0 | StartDay > 153) {
                StartDay = 1
        }
        if (EndDay <= 0 | EndDay > 153) {
                EndDay = 153
        }
        
        # Require libraries
        require(ggplot2)
        
        # Load data, data has air quality and environmental data from May to September of unknown year 
        dataset <- airquality
        
        # Keep only columns of use
        dataset <- subset(dataset, select=c(Ozone, Day))
        
        # Keep only data within the bounds specified by user
        dataset <- dataset[StartDay:EndDay,]
        
        # Check how many data points there are pre-processing
        count_before <- dim(dataset)[1]
        
        # Keep only data rows without missing values
        dataset <- dataset[complete.cases(dataset)==TRUE,]
        
        # Check how many data points there are post-processing
        count_after <- dim(dataset)[1]
        
        # Number of ommitted data points
        count_rm <- count_before - count_after
                        
        # Plot
        p <- ggplot(dataset) +
                geom_line(aes(x=Day, y=Ozone), color = col) +
                ggtitle("Time Series Plot of Ozone Concentration (in PPM)") +
                theme_classic()
        plot(p)
}