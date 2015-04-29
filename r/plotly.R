########
# plotly
########

# First, install and load the devtools package. From within the R console, enter:
# install.packages("devtools")
library("devtools")

# Next, install plotly. From within the R console, enter:
install_github("ropensci/plotly")

# Plotly's R package is updated frequently! To upgrade, just re-install:
devtools::install_github("ropensci/plotly")

# Initialization
# In the R console, import the Plotly R library.
library(plotly)

# This will print:
# Loading required package: RCurl
# Loading required package: bitops
# Loading required package: RJSONIO
# Loading required package: ggplot2

# Authentication
# Set your Plotly user credentials!
set_credentials_file("Ecohen4", "...")

# You only have to set this up if it's your first time using a Plotly API!

# Start plotting!
# Make a plot with ggplot2, as usual:
ggiris <- qplot(Petal.Width, Sepal.Length, data = iris, color = Species)
ggiris

# Now make this plot interactive and online. To do this, first instantiate a Plotly object:
py <- plotly()

# And call the ggplotly() method to convert your ggplot2 plot into a Plotly plot:
r <- py$ggplotly(ggiris)

# Your online, interactive, collaborative plot lives at this URL:
r$response$url
