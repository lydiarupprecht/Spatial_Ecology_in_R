# R code for population density

#intsall.packages("spatstat")
library(spatstat)

# Recall  data
bei

# Looking at the points in space
plot(bei)
plot(bei, pch=15)
plot(bei, pch=15, cex=.5)

# Drivers
bei.extra

# Plotting variables
plot(bei.extra)

# Subsetting a dataset: NEW CONCEPT!
# There are two different methods to make a subset:

# first: name of the variable and the $ symbol
elevation <- bei.extra$elev
plot(elevation)
points(bei, pch=15, cex=.5)

# second: subset by the number of the layer [] for tables, and [[]] for map layers
elevation2 <- bei.extra[[1]]
plot(elevation2)
# In case bei.extra was a table: bei.extra[1]

# Creating our first map!
densitymap <- density(bei)
plot(densitymap)
# Plotting the points ontop of the density map
points(bei, cex=.5)

# New concept!: MULTIFRAME!
# Creating the multiframe
par(mfrow=c(1,2))
plot(elevation)
plot(densitymap)

# Exercise: Put the elevation map ontop of the densitymap
par(mfrow=c(2,1))
plot(elevation)
plot(densitymap)

# If you get any graphical issue here is your friend: dev.off()

# Change colors in our maps
cl <- colorRampPalette(c("magenta1", "green", "mediumpurple"))
plot(densitymap, col=cl)

# Nuances
cl3 <- colorRampPalette(c("magenta1", "green", "mediumpurple"))(3)
plot(densitymap, col=cl3)

cl10 <- colorRampPalette(c("magenta1", "green", "mediumpurple"))(10)
plot(densitymap, col=cl10)

cl100 <- colorRampPalette(c("magenta1", "green", "mediumpurple"))(100)
plot(densitymap, col=cl100)

# Exercise: make a multiframe with the map with 10 nuances ontop of that with 100
par(mfrow=c(2,1))
plot(densitymap, col=cl10)
plot(densitymap, col=cl100)


