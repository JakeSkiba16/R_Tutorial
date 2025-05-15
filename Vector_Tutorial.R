#vectors contain data elements of the same basic type, denoted as c()
v1 <- c(1,2,3,4,5)
v2 <- c('red','gorilla','toe')

print(v2)
class(v2)

#these are just making vectors, and can do any type

#Initializing vectors
v3 <- vector("numeric", length = 10)
v3

#concatenating vectors
v12 <- c(v1,v2)
v12
class(v12) 
#this is because it combines into a character, so that the vector can work

num = c(0:10,10.5)
print(num)

#Factor Vector - used to store data, each as a categorical variable, 
  #like yes/no or small/medium/large type things
sizes <- as.factor(c("small", "large", "medium", "large", "small"))
sizes

#or, you can use just factor to control levels and labels
factor(c("apple", "banana", "apple", "orang"), levels = c("banana", "apple"), labels = c("B", "A"))
#or more user friendly/what would be done
fruits <- c("apple", "banana", "apple", "orang")
fruit_levels <- c("banana", "apple")
fruit_labels <- c("B", "A")
factor(fruits, levels = fruit_levels, labels = fruit_labels)
#of course, orange has an NA because its not listed
#to deal with this, use recode
library(dplyr) #recode needs this
fruits <- c("apple", "banana", "apple", "orang")
fruits_mapped <- recode(fruits,"apple" = "A","banana" = "B",.default = "Doesn't exist")
fruits_mapped
#this will allow you to manually set what would happen if a value in the vector doesn't have a level
fruits_factor <- factor(fruits_mapped, levels = c("B", "A"))
fruits_factor


#Explicit coercion
#taking num, you can convert to other types, like numeric, logical, character, etc.
as.numeric(num)
as.logical(num)
as.integer(num)
as.character(num)
#if a character is implemented into these, it can't be changed to like numeric or logical, 
  #so it would just produce NA and an error

#sequences
range_seq = seq(1,20,2)#gives odd numbers in between the range in order
print(odd_seq) 

length_seq = seq(from = 3, by=2, length =4)
print(length_seq)

#naming vectors
temp <- c(71, 65, 83, 74, 62, 68, 74)
days <- c("Mon", "Tues", "Wed", "Thurs", "Fri", "Sat", 'Sun')
names(temp) <- days
print(temp)

#vector operations. For each, can set it equal to a variable by (new variable) <- (operation). Here is just to display
v1 <- c(3,4,6)
v2 <- c(2,5,3)

v1+v2 #adds
v1-v2 #subtract
v1*v2 #multiply
v1/v2 # divide
sum(v1) #adds all elements in vector
mean(v1) #mean
sd(v1) #standard deviation
var(v1) #variance
prod(v1) #multiplies all elements
max(v1) #max value
min(v1) # min value
v1>v2 #logical if > than, can do for all logicals, like != not equal to, == equal to, etc.
v1>5 #logical if values greater than 5

#vector slicing and indexing
temp <- c(71, 65, 83, 74, 62, 68, 74)
days <- c("Mon", "Tues", "Wed", "Thurs", "Fri", "Sat", 'Sun')
names(temp) <- days
print(temp)

temp[3] #shows 3rd column
temp[3:5] #3rd through 5th
temp[c(1,3)]#1st and 3rd
#can also do this by names and logical positioning

#excluding positions
temp[-6:-7] #exludes 6th and 7th, which is weekend

temp[temp>70] #only temperatures greater than 70







