## EXERCISE 5 #####################################################################

# 5.1 Create a data frame called club.points with the following data.

Firstname<-c("Alice","Paul","Jerry","Thomas","Marquerite","Linda")
Lastname<-c("Ryan","Collins","Burke","Dolan","Black","McGrath")
Age<-c(37,34,26,72,18,24)
Gender<-c("F","M","M","M","F","F")
Points<-c(278,242,312,740,177,195)

d<-data.frame(Firstname, Lastname, Age, Gender, Points)

# 5.2. Store the points for every person into a vector called pts, then calculate the average number of points recieved.

pts<-d$Points
mean(pts)

# 5.3. Store the data for the females only into a data frame called fpoints.

fdata<-d[d$Gender == "F",]      # data from females
fpoints<-data.frame(fdata$Points)    # female points data
fpoints

# 5.4. The age for Jerry Burke was entered incorrectly, change it to 28.

d
d[3,3]<-28

# 5.5. Determine the maximum age of the males.

mdata<-d[d$Gender =="M",]
max(mdata$Age)

# 5.6.Extract the data for people with more than 100 ponits and are over the age of 30.

d[d$Points >100 & d$Age>30,]
