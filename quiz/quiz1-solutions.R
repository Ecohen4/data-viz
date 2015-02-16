# QMSS DATA VISUALIZATION
# INSTRUCTOR: ELLIOT COHEN
# QUIZ 1 SOLUTIONS
# 1. Suppose you are given a data frame containing 150 observations of 5 variables describing the physical attributes of 3 species of flowers. Describe one way to visually differentiate between sample groups in the data?
# 2. How would you use the grammar of graphics (Wilkinson 2005) to create this visualization?

# useful libraries
library(ggplot2)
library(plyr)
library(reshape2)

# look at the structure of the data
str(iris)
head(iris)

# summarize the data
summary(iris)
ddply(iris, .(Species), numcolwise(mean))

# plot the data
# first, try a bivariate scatterplot
ggplot(data=iris, aes(x=Sepal.Width, y=Sepal.Length, group=Species, colour=Species)) + geom_point()

# fit a linear model to the bivariate relationship (just for fun)
p <- ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length, group=Species, colour=Species))
p + geom_point() + stat_smooth(method="lm")

# try it another way...
ggplot(data=iris, aes(x=Sepal.Width, y=Sepal.Length, group=Species, colour=Species)) + geom_point() + facet_wrap(~Species)

# yet another way.
ggplot(iris, aes(factor(Species), Sepal.Width)) + geom_boxplot()

# reshape
iris.melt <- melt(iris, id.var=c("Species"))

# same concept, different implementation
ggplot(iris.melt, aes(factor(variable), value, grou=Species, colour=Species)) + geom_boxplot()
