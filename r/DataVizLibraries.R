# Install and load the leaflet library for R!
devtools::install_github("rstudio/leaflet")
library("leaflet")

# Example 1
# Step 1: Create a basic map object and add tiles
mymap <- leaflet()
mymap <- addTiles(mymap)

# View the empty map by typing the object name:
mymap

# Step 2: Set where you want the map to be centered and its zoom level
mymap <- setView(mymap, -84.3847, 33.7613, zoom = 17)
mymap

# Add a pop-up
addPopups(-84.3847, 33.7616, 'Data journalists at work, <b>NICAR 2015</b>')

# And now I’d like to introduce you to a somewhat new chaining function in R: %>%
# This takes the results of one function and sends it to the next one, so you don’t have to keep repeating the variable name you’re storing things, similar to the one-character Unix pipe command. We could compact the code above to:

mymap <- leaflet() %>%
  addTiles() %>%
  setView(-84.3847, 33.7613, zoom = 17) %>%
  addPopups(-84.3847, 33.7616, 'Data journalists at work, <b>NICAR 2015</b>')

# View the finished product:
mymap

# Or if you didn’t want to store the results in a variable for now but just work interactively:

leaflet() %>%
  addTiles() %>%
  setView(-84.3847, 33.7613, zoom = 16) %>%
  addPopups(-84.3847, 33.7616, 'Data journalists at work, <b>NICAR 2015</b>')

# Leaflet Example 2
# download.file("https://opendata.socrata.com/api/views/ddym-zvjk/rows.csv?accessType=DOWNLOAD", destfile="starbucks.csv", method="curl")

starbucks <- read.csv("http://opendata.socrata.com/api/views/ddym-zvjk/rows.csv?accessType=DOWNLOAD", stringsAsFactors = FALSE)

str(starbucks)

atlanta <- subset(starbucks, City == "Atlanta" & State == "GA")

leaflet() %>% addTiles() %>% setView(-84.3847, 33.7613, zoom = 16) %>%
  addMarkers(data = atlanta, lat = ~ Latitude, lng = ~ Longitude,popup = atlanta$Name) %>%
  addPopups(-84.3847, 33.7616, 'Data journalists at work, <b>NICAR 2')

# Now let's merge additional data....
statepops <- read.csv("acs2013_1yr_statepop.csv", stringsAsFactors = FALSE)
library(dplyr)

# There's a very easy way to count Starbucks by state with dplyr’s count function: count(mydataframe, mycolumnname)

starbucks_by_state <- count(starbucks, State)

# We'll need to add state population here. You can do that with base R’s merge or dplyr’s left_join. left_join is faster but I find merge more intuitive

starbucks_by_state <- merge(starbucks_by_state, statepops, all.x = TRUE, by.x="State", by.y="State") # No need to do by.x and by.y if columns have the same name

# better names
names(starbucks_by_state) <- c("State", "NumberStarbucks", "StatePopulation")

# Add new column to starbucks_by_state with dplyr mutate function, which just means alter the data frame by adding one or more columns. Then we’ll store in a new dataframe, starbucks_data, so as not to mess with the original.

starbucks_data <- starbucks_by_state %>%

  mutate(
    PeoplePerStarbucks = round(StatePopulation / NumberStarbucks)
  ) %>%
  select(State, NumberStarbucks, PeoplePerStarbucks) %>%
  arrange(desc(PeoplePerStarbucks))
Again the %>% character, so we don’t have to keep writing things like

starbucks_data <- mutate(starbucks_by_state, PeoplePerStarbucks = round(StatePopulation / NumberStarbucks))
starbucks_data <- select(starbucks_data, State, NumberStarbucks, PeoplePerStarbucks)
starbucks_data <- arrange(starbucks_data, desc(PeoplePerStarbucks))

Can we pretend for a moment that doing a histogram of this data is meaningful :-)? Because I want to show you a cool new histogram tool in Hadley Wickham’s ggvis package, still under development:

  library(ggvis)
starbucks_data %>%
  ggvis(x = ~PeoplePerStarbucks, fill := "gray") %>%
  layer_histograms()
Not a big deal? How about one with interactive sliders?

starbucks_data %>%
  ggvis(x = ~PeoplePerStarbucks, fill := "gray") %>%
  layer_histograms(width =  input_slider(1000, 20000, step = 1000, label = "width"))

# Can even add a rollover tooltip

starbucks_data %>%
  ggvis(x = ~PeoplePerStarbucks, fill := "gray") %>%
  layer_histograms(width =  input_slider(1000, 20000, step = 1000, label = "width")) %>%
  add_tooltip(function(df) (df$stack_upr_ - df$stack_lwr_))
