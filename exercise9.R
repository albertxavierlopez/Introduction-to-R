## EXERCISE 9 #####################################################################

# 9.1. Write a function that when passed a number, returns the number squared, the number cubed, and the square root of the number.

f1<-function(x){
  
  print(x^2)
  print(x^3)
  print(sqrt(x))
}
 
f1(2) #testing

# 9.2. Write a function that when passed a numeric vector, prints the value of the mean and standard deviation to the screen 

f2<-function(y){
  
  print(mean(y))
  print(sd(y))
  hist(y)
}

f2(rnorm(10000)) # testing

# 9.3. Management requires a function that calculates the sum of the lengths of 3 vectors. Write the function.

f3<-function(z1,z2,z3){
  
  a<-length(z1)
  b<-length(z2)
  c<-length(z3)
  sum<-a+b+c
  print(sum)
  
}

f3((1:8),(1:4),(1:5)) #testing
