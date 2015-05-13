########
# plotly
########
###############################
# If first time using plotyly...
################################
# # install and load the devtools package. From within the R console, enter:
# install.packages("devtools")
# library("devtools")
#
# # Next, install plotly. From within the R console, enter:
# install_github("ropensci/plotly")
#
# # Plotly's R package is updated frequently! To upgrade, just re-install:
# devtools::install_github("ropensci/plotly")
#
# # Initialization
# library(plotly)
#
# # Authentication
# set_credentials_file("Ecohen4", "...")
#
# # You only have to set this up if it's your first time using a Plotly API!

######################
# returning plotly users start here
######################
library(plotly)

# Make a plot with ggplot2, as usual:
setwd("~/github/data-viz/r")
load("cities.rdata") # population and growth rate data for global cities with pop > 750k

# base map
world <- map_data("world")
worldmap <- ggplot(world, aes(x=long, y=lat, group=group)) +
  geom_path()

###### Plot Current Population and Urbanization Rates ######
ggmap <- ggplot() +
  geom_path(data=world, alpha=0.5, size=0.2, aes(x=long, y=lat, group=group)) +
  geom_text(data=subset(cities, Period=="2010-2015"), aes(x=Longitude, y=Latitude, label=Urban.Agglomeration, alpha=Growth.Quartile, size=pi*(Pop./10^3)^2)) +
#   geom_hline(y=-23.45, linetype=2, size=0.2) + # tropic of capricorn
#   geom_hline(y= 23.45, linetype=2, size=0.2) + # tropic of cancer
#   geom_hline(y=-38, linetype=3, size=0.2) +    # southern boundary of sub-tropics
#   geom_hline(y=38, linetype=3, size=0.2) +     # northern boundary of sub-tropics
#   geom_point(data=subset(cities, Period=="2010-2015"), aes(x=Longitude, y=Latitude, colour=Growth.Quartile, size=Pop./10^3)) +
#   scale_color_brewer(palette="Reds") +
#   coord_equal() +
#   scale_y_continuous(breaks=(-2:2) * 30) +
#   scale_x_continuous(breaks=(-4:4) * 45) +
  labs(alpha = 'Urbanization Rate', size = "Population (Millions)", title= "Rapid Urbanization Throughout South Asia\nText size scales with population, Opacity scales with population growth rate") +
  theme_bw() +
  scale_size(range = c(1, 50)) +
  theme(legend.position="none")

ggmap

# Now make this plot interactive and online. To do this, first instantiate a Plotly object:
py <- plotly()

# And call the ggplotly() method to convert your ggplot2 plot into a Plotly plot:
r <- py$ggplotly(ggmap)

# Your online, interactive, collaborative plot lives at this URL:
r$response$url
