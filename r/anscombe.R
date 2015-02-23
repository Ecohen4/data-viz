## Anscombes Quartet

# set working directory
setwd("~/github/data-viz/r")

# load libraries
require(stats); require(reshape2); require(ggplot2); require(plyr)

# raw data
anscombe

# reshape the data
X <- c(anscombe$x1, anscombe$x2, anscombe$x3, anscombe$x4)
Y <- c(anscombe$y1, anscombe$y2, anscombe$y3, anscombe$y4)
ID <- rep(1:4, each=11)
df <- data.frame(x=X, y=Y, group=ID)

## data visualization!
ggplot(df, aes(x=x, y=y, group=group)) + geom_point() + facet_wrap(~group) + stat_smooth(method="lm")

## fit a OLS model for each of Anscombe's data sets
mod.list <- dlply(df, .(group), function(df) lm(df$y ~ df$x))

## model fit
lapply(mod.list, summary)

## model diagnostics (one model at a time)
#par(mfrow(2,2)) # split the graphical display into 2 rows by 2 columns
#plot(mod.list[[1]]) # use base R model diagnostic plots

## Elliot's model diagnostics (from first principles)
source("myModelDiagnostics.R")
GLMdiagnostics(mod.list[[1]])  # pass
GLMdiagnostics(mod.list[[2]])  # fail
GLMdiagnostics(mod.list[[3]])  # fail
GLMdiagnostics(mod.list[[4]])  # fail

