## EXERCISE 3 #####################################################################

# 3.1. Construct a matrix A and B

A<-c(10,20,30,50,1,4,2,3,15,11,19,5)
dim(A)<-c(4,3)

B<-c(2.5,3.5,1.75)

A   #Just to check they are OK
B   #Just to check they are OK

# 3.2. Combine A and B into a new matrix C using cbind().

C<-cbind(A,B) # A and B have have not same number of rows = NOT POSSIBLE

# 3.3. Combine A and B into a new matrix C using rbind().

H<-rbind(A,B) # A and B have same number of columns = IT'S POSSIBLE

# 3.4. Determine the dimensions of C and H using dim() function.

dim(C) # Can't megre them, so no possible output.
dim(H) # 5 rows, 3 columns.

# 3.5. Calculate the following.

m1<-c(1,0,4,2,3,8)
dim(m1)<-c(2,3)
m2<-c(1,2,6,9,17,3)
dim(m2)<-c(3,2)

result<-m1 %*% m2
result

# 3.6. Create a 4x4x2 array arr using the values 1 to 32.

a<-c(1:32)
arr<-array(a,c(4,4,2)) # 2 matrices 4x4 made from vector a.

# 3.7. Print out the value in row 1, column 3 of the first matrix.

arr[1,3,1]

# 3.8. Print out the value in row 2, column 4 of the second matrix.

arr[2,4,2]

# 3.9. Add these two values together.

x1<-arr[1,3,1]
x2<-arr[2,4,2]
add<-x1+x2
add

# 3.10. Print out the row 2 of the second matrix.

arr[2,,2]


