# dygraph demo for EOS 
# retrieve data directly from online source
download.file("https://raw.githubusercontent.com/tendrilinc/eOS/master/outputs/jmolson_2015-09-05_opt.csv?token=AHC5tc-mGkCvo74ddBsOFDXBSYtGicezks5WF_m6wA%3D%3D", destfile="jmolson_2015-09-05_opt.csv", method="curl")

# read into R
jmolson <- read.csv("jmolson_2015-09-05_opt.csv")

# set time to posix datetime object
jmolson$time <- as.POSIXct(jmolson$time, format="%Y-%m-%d %H:%M:%S", tz = "US/Mountain")
colnames(jmolson)[19] <- 'UTC' # retain UTC column as well

# subset
jmolson_T <- subset(jmolson, select=c("time", "T", "Tmin", "Tmax"))
class(jmolson_T)

# coerce to time series (ts) object
a <- ts(jmolson_T)
class(a)
plot(a)

# coerce to extensible time series (xts) object
b <- xts(x = subset(jmolson, select = c("T", "Tmin", "Tmax")),
         order.by=jmolson$time,
         frequency=24,
         tzone = "US/Mountain")

# create dynamic graph with dygraph
dygraph(b, main = 'Optimal Temperature Profile') %>%
  dyAxis("y", label = "Temp (C)", valueRange = c(18, 28)) %>%
  dyAxis("x", label = "Time") %>%
  dyOptions(axisLineWidth = 1, fillGraph = FALSE, drawGrid = TRUE) %>%
  dyRangeSelector(height = 40)

# zoom, dive and drill-down to your hearts content!
