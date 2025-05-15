#Matrices
m <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
#Byrow specifies that the order goes through each row, rather than down the column first
print(m)

#dont need to specify everything
m1 <- matrix(1:10, nrow = 3) #this goves an error, but still give matrix
print(m1)

cbind(1:3, 2:4)#these will give each part in each column, as long as they are the same length
rbind(1:3, 1:3)#same, but for rows

#adding rows/columns
mat1 <- matrix(1:6, byrow = TRUE, nrow = 2)
mat1
new_mat1 <- cbind(mat1, c(10,11))
new_mat1 #this will add the vector as a new row

#naming
rownames(new_mat1) <- c("row 1", "row 2") #can do same with colnames, as long as the vector size matches numbers or row/columns
new_mat1










