## EXERCISES 2 #####################################################################

# 2.1. Create a vector x with the following entries 3 4 1 1 2 1 4 2 1 1 5 3 1 1 1 2 4 5 5 3 Check which elements of x are equal to 1 (Hint use == operator). x so that all of the 1’s are changed to 0’s
# Modify x so that all of the 1’s are changed to 0’s.

x<-c(3,4,1,1,2,1,4,2,1,1,5,3,1,1,1,2,4,5,5,3)

x==1       # elements equal to 1=TRUE
sum(x==1)  # total 

x[x==1]<-0  #replacing 1 by 0 on vector X

# 2.2. Create a vector Y containing the elements of X that are greater than 1.

y<-x[x>1]

# 2.3. Create a sequence of numbers from 1 to 20 in steps of 0.2 and store.

seq<-seq(1,20, by=0.2)
seq

# 2.4. Concatenate x and y into a vector called NewVec.

NewVec<-c(x,y)

# 2.5. Display all objects in the workspace and then remove NewVec

ls()
rm(NewVec)

# 2.6. Create a factor fpain to represent the above data.

patient<-seq(1,6, by=1)
painlevel<-c(0,3,1,2,1,2)

fpain<-factor(painlevel, levels=0:3)
levels(fpain)<-c("No pain","Mild pain","Medium pain","Severe pain")

summary(painlevel)
summary(fpain)

