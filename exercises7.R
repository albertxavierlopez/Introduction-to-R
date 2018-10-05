## EXERCISES 7 #####################################################################

# 7.1. Draw a random sample of size 100 from the interval [0,2],  which contains 201 values. 
# Sample without replacement.

sample((runif(201, min=0, max=2)),100) 

# 7.2. Use dt to evaluate the density fucntion of the t distribution with 13 degrees of freedom at 21 values in the range -1 to 1.

x<-runif(21, min=-1, max=1)
dt(x, df=13)

# 7.3. Find x such that P[X ≤ x] = 0.01 for a t distribution with 9 degrees of freedom. 

pt(0.01, df=9) #distribution function
qt(0.01, df=9) #inverse distr function

# 7.4. IQ scores are known to have a normal distribution with mean 100 and standard deviation 15. What IQ would you have if you were in the 80th percentile? 

z<-rnorm(1000, mean=100, sd=15)
quantile(z, 0.8)
hist(z) # 113.56 for the 80th quantile seems correct.

# 7.5. What IQ would you have if you were in the top 10 percent? 

quantile(z, 0.9) 

# 7.6. What is the probability of having an IQ above 142?

probabilityIQ142<-1-(pnorm(142, mean=100, sd=15))

# 7.7.  Set the seed to "0" and create two samples of size 20 from the standard normal distribution with the same values. 
#  Repeat the process but set the seed to your ID number.

set.seed(0)
x1<-sample((rnorm(20, mean=1, sd=2)),20)
set.seed(0)
x2<-sample((rnorm(20, mean=1, sd=2)),20)

set.seed(21752716)
y1<-sample((rnorm(20, mean=1, sd=2)),20)
set.seed(21752716)
y2<-sample((rnorm(20, mean=1, sd=2)),20)
