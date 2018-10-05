## EXERCISE 1 ############################################################################

# 1.1. Create summary statistics for the elastic band data. (Create a dataframe using data from a table)

elasticband<-data.frame(stretch=c(46,54,48,50,44,42,52), distance=c(148,182,173,166,109,141,166))
summary(elasticband)

# 1.2. Create a plot of distance versus stretch.

plot(stretch~distance, data=elasticband, pch=16, main="Elasticband stretch against distance")

# 1.3. Use the help() command to find more information about the hist() command.

help("hist") # The generic function hist() computes a histogram of the given data values. 

hist(elasticband$stretch)

# 1.4. Create a histogram of the distance using hist().

hist(elasticband$distance, breaks=4, main="Histogram of the distance")

# 1.5. The following data are on snow cover for Eurasia in the years 1970-1979.

year<-seq(1970,1979, by=1)
snow.cover<-c(6.5,12.0,14.9,10.0,10.7,7.9,21.9,12.5,14.5,9.5)

log(snow.cover)
logsnow<-log(snow.cover) #creating a new variable

plot(snow.cover~year, pch=16, main="Snow cover every year")

# 1.6. Display all objects in the workspace. Remove the data frame elasticband.

ls()
rm(elasticband)
