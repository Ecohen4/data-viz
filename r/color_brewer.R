library(ggplot2)
library(scales)

# sample set
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]

# with ggplot
d <- ggplot(dsamp, aes(x=carat, y=price, colour=clarity)) + geom_point()

# with qplot (identical with this specification)
(d <- qplot(carat, price, data = dsamp, colour = clarity))

# Change scale label
d + scale_colour_brewer()
d + scale_colour_brewer("clarity")
d + scale_colour_brewer(expression(clarity[beta]))

# Select brewer palette to use, see ?scales::brewer_pal for more details
# sequential
d + scale_colour_brewer(type = "seq")
d + scale_colour_brewer(type = "seq", palette = 3)
d + scale_colour_brewer(palette = "Blues")

# diverging
d + scale_colour_brewer(type = "div")
d + scale_colour_brewer(type = "div", palette =2)

# qualitative
d + scale_colour_brewer(type = "qual")
d + scale_colour_brewer(type = "qual", palette =2)

# palettes
?scales::brewer_pal # more palettes to choose from
show_col(brewer_pal()(9))
show_col(brewer_pal("div")(5))
show_col(brewer_pal(pal = "Greens")(5))

# Can use with gradient_n to create a continous gradient
cols <- brewer_pal("div")(5)
show_col(gradient_n_pal(cols)(seq(0, 1, length = 30)))

## other nifty tricks!
col2rgb("yellow")
col2rgb("black")
col2rgb("magenta")

# define an RGB triple with each of the color components ranging from 0.0 to 1.0 using the rgb function.  For example, yellow:
rgb(1.0, 1.0, 0.0)

# alternatively
rgb(255, 255, 0, maxColorValue=255)

# grep can be used to find color names of interest, e.g.,
reds <- grep("red",colors())
colors()[reds]
colors()[grep("green",colors())]
colors()[grep("blue",colors())]
