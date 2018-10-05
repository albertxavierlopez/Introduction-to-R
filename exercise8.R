## EXERCISE 8 #####################################################################

# 8.1. Create a vector x of the values from 1 to 20.

x<-c(1:20, by=1)

# 8.2. Create a vector w <- 1 + sqrt(x)/2

w<- 1+sqrt(x)/2

# 8.3. Create a data frame called dummy, with columns x = x and y = x + rnorm(x)*w. To ensure we all get the same values, set the seed to 0. 

set.seed(0)
y<-x+rnorm(x)*w
dummy<-data.frame(x,y)

# 8.4. Create a histogram and a boxplot of y and plot them side-by-side on the same graphing region. Label the axes accordingly. Save your results as a Jpeg ???le

par(mfrow=c(1,2))
hist(dummy$y, main="Histogram of y")
boxplot(dummy$y, main="Boxplot of y")

# 8.5. Plot y versus x using an appropriate plotting command. Put a title on the graph and labels on the axes.

par(mfrow=c(1,1))
plot(dummy$x, dummy$y, ylab="observations of y", xlab = "observations of x", pch=16, main= "X versus Y")

# 8.6. Enter the command fm <- lm(y~x, data=dummy) to ???t a linear regression model. Add the estimated regression line to the current plot and make it the colour blue. 

fm<-lm(y~x, data=dummy)
plot(dummy$x, dummy$y, ylab="observations of y", xlab = "observations of x", pch=16, main= "X versus Y")
abline(coef(fm), lty=1, col="blue", lwd=2)

# 8.7 Extract the values of the residuals using resids <- resid(fm). Check that the residuals are normally distributed by creating a Q-Q plot. 

resids<-resid(fm)
qqnorm(resids)
qqline(resids)

# 8.8. The airquality data set in the base library has columns Ozone, Solar.R, Wind, Temp, Month and Day. Plot Ozone against Solar.R for each of THREE temperature ranges and each of THREE wind ranges. (Hint: Use coplot.) 

?airquality

data<-airquality
pairs(data[1:6]) # to get a fast visualization

coplot1<-(coplot(data$Ozone~data$Solar.R|data$Temp))

coplot2<-(coplot(data$Ozone~data$Solar.R|data$Wind))

# 8.9. Construct a histogram of Wind and overaly the density curve.

hist(data$Wind)
wind<-data$Wind

h<-hist(wind, breaks=10, xlab="Wind", main="Histogram with density curve")
xfit<-seq(min(wind), max(wind), length(4))
yfit<-dnorm(xfit, mean=mean(wind), sd=sd(wind))
yfit<-yfit*length(wind)

lines(xfit, yfit, col="red",lwd=2)

