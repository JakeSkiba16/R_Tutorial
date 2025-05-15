#used to store data in form of table
BMI <- data.frame(gender = c("Male","Female","Male"),
                  height = c(152, 171.5, 165),
                  weight = c(81, 93, 78),
                  age = c(42, 38, 26))
print(BMI)

#formatting, if all are same number of rows
nm = c("John", "Bill", "Sally", "Bob")
age = c(42,31,25,52)
emp = c(TRUE, FALSE, FALSE, TRUE)
Jobs <- data.frame(nm,age,emp)
print(Jobs)
#and can explicitly name columns, to be cleaner
Jobs_cleaner <- data.frame(Name = nm, Age = age, Employed = emp)
print(Jobs_cleaner)

#extracting data
print(Jobs_cleaner)
Jobs_cleaner[1] #this will print the column, so first column
Jobs_cleaner["Name"] #another way

Jobs_cleaner[1,]#prints first row

Jobs_cleaner[1,2] #takes element, row 1 column 2
Jobs_cleaner[1,"Age"] #another way

#can also take from multiple rows and columns
Jobs_cleaner[c(1,3)] #columns 1 and 3, because no comma after. Can also put name to do it instead
Jobs_cleaner[c(2,4),] #rows 2 and 4
Jobs_cleaner[c(2,4),c(1,3)] #rows 2 and 4 and columns 1 and 3

#The next 3 will display them as a vector, all the same
Jobs_cleaner$Name
Jobs_cleaner[["Name"]]
Jobs_cleaner[[1]]

#single bracket will give it as a data frame, double will give it as a list


#adding elements, 2 ways of doing it
ht <- c(165, 183, 143, 177)
Jobs_cleaner$Height <- ht
print(Jobs_cleaner)

lbs <- c(74, 68, 52, 81)
Jobs_cleaner[["Weight"]] <- lbs
print(Jobs_cleaner)

cbind(Jobs_cleaner,lbs) #this only temporarily adds, print next part to show difference
Jobs_cleaner <- cbind(Jobs_cleaner,lbs)#this will permenatly add, same for rbind
print(Jobs_cleaner)
#this is another way, but the variable name is what will be displayed, can't be changed

#rows are more complicated, need to create a new data frame
names(Jobs_cleaner)
names(new_emp_Jim)

new_emp_Jim <- data.frame(Name = "Jim", Age = 27, Employed = TRUE, Height = 170, Weight = 78 ) #need same number
Jobs_cleaner <- rbind(Jobs_cleaner,new_emp_Jim)
print(Jobs_cleaner)

#ordering
Age_rank <- order(Jobs_cleaner$Age)
print(Age_rank) #this will show the place or rank, like youngest, etc. numbered
sort(Jobs_cleaner$Age) #orders from least to greatest, can see youngest and oldest easily
Jobs_cleaner$Age #notice these differences

#to order
Jobs_cleaner[Age_rank,]#this will put in order youngest to oldest by age. notice row number switched on left
#can do decreasing same way, just put 
Age_rankDec <- order(Jobs_cleaner$Age, decreasing=TRUE)
Jobs_cleaner[Age_rankDec,]#without permenantly changing




