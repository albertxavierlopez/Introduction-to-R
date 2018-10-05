## EXERCISES 6 #####################################################################

# 6.1. Download the example2.txt data and save it into your working directory.

setwd("####")

# 6.2. Read this data into R.

data<-read.table("example2.txt", header=TRUE)

# 6.3. Print out the data for cases 10 to 18.

data$yrs[10:18]
data$happy[10:18]

# 6.4 Print out yhe data for column 2, cases 23, 2 and 5.

data$happy[23]
data$happy[2]
data$happy[5]

# 6.5. Find the mean, sd, min and max for each variable.

summary(data)  # 1 command for everything, except sd.
sd(data$yrs)
sd(data$happy)

# 6.6. Read into R the files in readdata.zip. Use proper read.data option. When printing out data should be the same.

data<-read.csv("data.csv", na.string="")
data1<-read.csv("data1.csv", na.string="")
data2<-read.csv("data2.csv", na.string="?")
data3<-read.table("data3.csv", sep=";", na.string="", dec=",")  #previosly saving into .csv
data4<-read.table("data4.csv", sep=";", na.strings="?", dec=",")
data5<-read.table("data5.csv", sep="", na.strings ="?", dec=",") # separation are tabs


