##--------vectors----------------------------
#advanced

#handling missing values
order <- c(10,20,30,NA,50,60)
names(order) <- c("mon", "tues", "wed", "thurs", "fri", "sat")

new <- c(5,10) #adds 5 on even days, 10 on odd days
updated <- order+new
print(updated)

#subsets
first2_order <- order[1:2]
print(first2_order)

length_order <- length(order)
last_two <- order[(length_order-1):length_order] #last two values, takes n-1 position to n
print(length_order)
v2 <- order[(length_order-1):2]#starts from n-1, goes backwards to 2nd position
print(v2)

order<40 #this will check if true or false
less40 <- order[order<40]#displays what is less than 40
print(less40)

#omitting NA
upd_less40 <- na.omit(less40)
print(upd_less40)

#multiples of a number
mult_3 <- order[(order %% 3) == 0]
print(mult_3)

#operations, with the NA value
sum(order) #doesn't work because of NA
sum(order, na.rm = TRUE)

##--------matrices------------------------------------------------------------------
#merging vectors
stock1 <- c(450,541,364,764, 345)
stock2 <- c(346, 726, 354, 654, 764)
stock3 <- c(287, 456, 876, 473, 546)
stock <- c(stock1, stock2, stock3) #this will put in a vector, but all in a row
print(stock)
total_stock <- matrix(stock, byrow = TRUE, nrow=3)# have 3 orders, so do 3 rows. need to be displayed in rows, so byrow=true
print(total_stock)

days <- c("Mon", "Tues", "Wed", "Thurs", "Fri")
week <- c("Week 1", "Week 2", "Week 3")

colnames(total_stock) <- days
rownames(total_stock) <- week

print(total_stock)
View(total_stock)

#functions of matrices
nrow(total_stock)#says number of rows, can do with ncol
dim(total_stock)#row x column
rownames(total_stock)#displays names or rows, can do with colnames
dimnames(total_stock)#displays row names, then column names

#operations
#can do scalar, multiplication, etc just by _ (operation) (matrix)
#matrix on matrix only works for same size for addition, and nxm * mxr for multiplication

colSums(total_stock)#sum of each column, can do same for rowSums
rowMeans(total_stock)#mean of each row, can do same for colMeans
#manipulating data
Avg <- rowMeans(total_stock)
total_stock <- cbind(total_stock,Avg)
print(total_stock)

#selection and indexing
total_stock[,6]#gives the average column
total_stock[,"Avg"]#same thing
total_stock[,c(1,3:5)]#shows 1st, 3rd, 4th, 5th day (columns)

total_stock[1,]#gives first week
total_stock["Week 2",]#can pick if everything named

total_stock[3, c(1,3:4)] #3rd week, columns 1, 3, 4

#finding the values
total_stock["Week 3", c("Mon", "Wed", "Thurs")]# shows same as previous, just by names because it may be easier. note you can't do the colon

#operations
mean(total_stock) #everything combined

#apply - give name, 
help(apply) #to open what it is
apply(total_stock,2,mean) #1 indicates rows, 2 indicates columns

passing_stock <- c(400, 500, 450, 700,550, 500)
week1_pass <- (total_stock[c("Week 1"),]>passing_stock)
print(week1_pass)
sum(week1_pass)
##--------data frames---------------------------------------------------------------------------
#data frames
auction <- read.csv("C:\\Users\\Jake16\\Documents\\R\\Intro to R Tutorial\\Datasets\\Auctions\\2023 Auction\\IPL_2023_Auction_Submitted.csv")
View(auction)#puts nice table view
head(auction)#first 6
tail(auction)#last 6

summary(auction)#gives big overview and statistical summary
str(auction)#structure, like each column if character, integer, etc

data() #shows all the R data sets
data(iris)
View(iris)

days <- c('Mon', "tues", "wed", "thurs", "fri", "sat", "sun")
temp <- c(71,65,83,74,62,68,74)
rain <- c(T,F,F,F,T,F,T)
week_precip = data.frame(days,temp,rain)
print(week_precip)
summary(week_precip)

#indexing is the same as matrices
week_precip$temp #this gives values
week_precip['temp'] #this looks nicer

#subsets
subset(week_precip, rain==TRUE)
mean(subset(week_precip, temp>70)$temp) #mean of tempuratures for the subset over 70 degrees


#merging data frames
wind <- c(23, 25, 6, 8, 25, 11, 13)
UV <- c(3, 7, 9, 8, 1, 5, 2)
week_precip2 <- data.frame(days, wind, UV) #i created abother data frame with the same days section
print(week_precip2)

week_weather <- merge(week_precip,week_precip2)#continueing if column names differ... by.x="days", by.y="day")
#the by.x will be the new value, and it merges the by.y column into it
#because of that, only values from 2nd column "day" will be in merged data frame, and not all of "days" may be captured
print(week_weather)
#if values have differing names, can merge two columns together so it just stays one column


#manipulating data frame
sales <- data.frame(ID=101:110,
                    Product = c("a","b"),
                    Price = round(runif(10,50,250),2), #runif is a uniform distr. for 10 numbers, with min=50 and max = 250. As integer just tells it to keep it rounded to an integer
                    Quantity = as.integer(runif(10,10,20)))
print(sales)

#transpose
t(sales)

#sorting data frame
sales[order(sales$Price),] #orders by price
sales[order(sales$Price,decreasing =T),] #orders by price, decreasing

sales[order(sales$Product,-sales$Price),] #put a first, with all prices in decreasing order, then b products, in decreasing order

#subsets of data frams
product_a <- subset(sales, Product =="a")
print(product_a)

moreproduct_a <- subset(sales, Product == "a" & Price >150, c(1,4)) #data set, conditions to display row, conditions to display column
print(moreproduct_a)
                    
# take both subsets, and can manually merge into cbind (would get a on one side, b on other), or rbind (would get original)

#aggregate function
# it means for data in first part (quantity) by type (product), you are doing to sum 
aggregate(sales$Quantity, list(sales$Product), sum)
##--------lists---------------------------------------------------------
my_list <- list(
  name = "Alice",
  age = 28,
  scores = c(95, 87, 92),
  details = data.frame(height = 165, weight = 60),
  personal = list(language = "polish", birthyear = 2005)
)
my_list #shows how you can use all types in list, nest other lists, etc

my_list$personal$language
my_list[[5]][1] #displays same thing

#converting vector to list
price <- c(10,20,30)
pricelist <- as.list(price)
pricelist
price

#list to vector
newprice <- unlist(pricelist)
newprice

#vector to matrix
price1 <- c(10,20,30,40)
dim(price1) <- c(2,2)
print(price1)


#basic data type functions
#know as.integer (integer return), is.numeric (logical return), these types
fun <- "John"
toupper(fun)#makes all uppercase
substr(fun,1,1) #takes first character out of variable fun. it is lower,upper bound
names <- "jAke"
fixed_name <- paste0(toupper(substr(names,1,1)),tolower(substr(names,2,nchar(names))))
print(fixed_name)
#with a vector of names
names <- c("jAke", "ALICE", "bOb")
fixed_names <- sapply(names, function(n) {
  paste0(toupper(substr(n, 1, 1)), tolower(substr(n, 2, nchar(n))))
})
print(fixed_names)
#or more modern
install.packages("stringr")
library(stringr)
names <- c("jAke", "ALICE", "bOb")
fixed_names <- str_to_title(names)
print(fixed_names)




