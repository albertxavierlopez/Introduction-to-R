## EXERCISES 4 #####################################################################

# 4.1. Create 4 vectors Year with the following entries:

Year<-c(1980,1988,1996,1998,2000,2002)
mean_weight<-c(71.5,72.1,73.7,74.3,75.2,74.7)
Gender<-c("M","M","F","F","M","M")
mean_height<-c(179.3,179.9,180.5,180.1,180.3,180.4)

# 4.2. Create a list called "mylist" consisting of above vectors. Give each component of the list a name.

L1<-list(year=Year, weight=mean_weight, gender=Gender, height=mean_height)

# 4.3. Use 3 diff ways to access the 4th element of the list.

L1[["height"]]
L1$height
L1[[4]]
