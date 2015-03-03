library(stats)
library(plyr)
library(graphics)
library(ggplot2)
library(reshape2)

anscombe

X <- c(anscombe$x1, anscombe$x2, anscombe$x3, anscombe$x4)
Y <- c(anscombe$y1, anscombe$y2, anscombe$y3, anscombe$y4)

ID <- rep(1:4, each=11)
df <- data.frame(x=X, y=Y, group=ID)

mod.list <- dlply(df, .(group), function(df) lm(df$y ~ df$x))

lapply(mod.list, summary)

ggplot(df, aes(x=x, y=y, group=group) + )

plot(mod.list[[1]])


