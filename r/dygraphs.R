# Time Series Graphing with `dygraphs`!

# Load libraries: dygraphs and xts.
# if not on your system yet, first install with:
# install.packages("dygraphs")
# install.packages("xts")
library("dygraphs")
library("xts")

# simple dygraph created from a multiple time series (mts) object
lungDeaths <- cbind(mdeaths, fdeaths)
dygraph(lungDeaths)

# You can customize dygraphs by piping additional commands onto the original dygraph object. Here we pipe a dyRangeSelector onto our original graph:
dygraph(lungDeaths) %>% dyRangeSelector()

# Note that this example uses the %>% (or “pipe”) operator from the magrittr package to compose the dygraph with the range selector. You use a similar syntax to customize axes, series, and other options. For example:

dygraph(lungDeaths) %>%
  dySeries("mdeaths", label = "Male") %>%
  dySeries("fdeaths", label = "Female") %>%
  dyOptions(stackedGraph = TRUE) %>%
  dyRangeSelector(height = 40)

# Many options for customizing series and axis display are available. It’s even possible to combine multiple lower/value/upper style series into a single display with shaded bars. Here’s an example that illustrates shaded bars, specifying a plot title, suppressing the drawing of the grid for the x axis, and the use of a custom palette for series colors:

hw <- HoltWinters(ldeaths)
predicted <- predict(hw, n.ahead = 72, prediction.interval = TRUE)
str(ldeaths)
str(predicted)

dygraph(predicted, main = "Predicted Lung Deaths (UK)") %>%
  dyAxis("x", drawGrid = FALSE) %>%
  dySeries(c("lwr", "fit", "upr"), label = "Deaths") %>%
  dyOptions(colors = RColorBrewer::brewer.pal(3, "Set1"))

#############
## Example 2
############
# retrieve data directly from online source
download.file("https://raw.githubusercontent.com/Ecohen4/Energy/master/data/weather/Abidjan_Interpolated_Hourly.csv", destfile="Abidjan_Interpolated_Hourly.csv", method="curl")

# read into R
Abidjan <- read.csv("Abidjan_Interpolated_Hourly.csv")

# subset to just the first year of data (2010)
Abidjan$hours <- as.POSIXct(Abidjan$hours, format="%Y-%m-%d %H:%M:%S")
abidjan.wx <- subset(Abidjan, hours > Abidjan$hours[1] & hours < Abidjan$hours[8760])

# coerce to time series (ts) object
abidjan.ts <- ts(data=subset(abidjan.wx, select=c("TEMP", "DEW.POINT")), start=c(2010,1), frequency=8760)
# create static plot
plot(abidjan.ts)

# coerce to extensible time series (mts) object
abidjan.xts <- xts(subset(abidjan.wx, select=c("TEMP", "DEW.POINT")),
                   order.by=abidjan.wx$hours,
                   frequency=8760,
                   tzone = "EST")

# create dynamic graph with dygraph
dygraph(abidjan.xts) %>%
  # dyOptions(stackedGraph = TRUE) %>%
  dyRangeSelector(height = 40)

# zoom, dive and drill-down to your hearts content!
