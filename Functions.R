##--------------------creating functions----------------------------------------
#syntax <- function(argument1, ...){functionbody}
squares <- function(a) {
  for (i in 1:a){ #all squares from 1 to the number is printed
    b <- i^2
    print(b)
  }
}
squares(4)

#built in functions like sum(), etc

#function with no inputs
hello0 <- function(){
  print('hello!')
}
hello0()

#1 argument
hello1 <- function(name){
  print(paste('hello', name))
}
hello1('John')

#more than 1
num2 <- function(n1, n2){
  print(n1+n2)
}
num2(23,47)

#add a vector to a number
num2(c(10,20,30),5)#each element in vector is n1, and 3 numbers are displayed

#default argument values
default <- function(name='employee! Please enter your name'){#we do this so something is displayed
  print(paste('Hello',name))
}
default()
default('Same')


#return value from function
fullname <- function(firstname='John', lastname='Smith'){
  return(paste(firstname,lastname))
}
fullname()
fullname('Bob','Joe')

#ex. adding 20%tax
bill <- function(x=100){
  total = x + x*.2
  return(paste0("Total: $",total))
}
bill(200)

#checking arguments args and body body of a function
args(bill)
body(bill)

#scope/multiple functions
g2 <- function(x,y){
  y+(x^2)
}
f2 <- function(x){
  y=10 #y is already defined in here, so when its plugged into g, this y=10 is already here
  g2(x,y) #the x value when calling f2(x) is used. Plugged into g2(x,10)
}  
f2(20)


#examples with if statements
bonus_calculator <- function(salary, experienceyears){
  if (experienceyears>=5){
    bonus_percent = 10
  } else if (experienceyears >=1 & experienceyears <5) {
    bonus_percent = 5
  } else {
    bonus_percent = 0
  }
  bonus <- salary * (bonus_percent/100)
  return(bonus)
}
bonus_calculator(75000,8)  


#nested if inside
bonus_calculator <- function(salary, experienceyears){
  if (experienceyears>=0){
    if(experienceyears<= 1){
      bonus_percent = 0
    } else if (experienceyears >1 & experienceyears <5) {
      bonus_percent = 5
    } else {
      bonus_percent = 10
    } 
  } else{
    experience = "Enter a valid amount"
    print(experience)
  }
  bonus <- salary * (bonus_percent/100)
  return(bonus)
}
bonus_calculator(62250,-1)  

#this works too
bonus_calculator <- function(salary, experienceyears) {
  if (experienceyears < 0) {
    return(print("Enter a valid amount"))
  }
  bonus_percent <- ifelse(experienceyears <= 1, 0,
                          ifelse(experienceyears < 5, 5, 10))
  bonus <- salary * (bonus_percent / 100)
  return(bonus)
}
bonus_calculator(52000,7)


#Switch/case function
GDP <- function(city){
  gdp_amount <- switch(toupper(city), #used in case input syntax is worng, as long as spelling correct
                       CHICAGO = 10000,
                       PARIS = 2500,
                       DENVER = 7500,
                       "Enter valid city")
  return(gdp_amount)
}
GDP("chicago")
GDP("france")

#ex. stocks account
future_value <- function(amount, years, rate){
  for (i in 1:years){
    interest = round(amount*rate/100,2)
    finalamount = amount + interest
    message("Year ", i, " => Previous Balance: ",amount, " => Interest Gained: ", interest, "\n=> Final Balance at Year ",i,": ",finalamount)
    amount = finalamount
  }
}
future_value(1000,40,8)  

#number of years to raise $x if you deposit $y per month
req_years <- function (starting_amount, deposit_per_month, interest_rate, final_amount){
  month=0
  current_amount=starting_amount
  while(current_amount<=final_amount){
    month = month +1
    interest_amount = (current_amount + deposit_per_month)*(interest_rate/(100*12))
    current_amount = current_amount + deposit_per_month + interest_amount
    message("Month: ",month, " | Current Amount: $", sprintf("%.2f",current_amount))
  }
  year = month/12
  return(year)
}
req_years(3000,100, 8, 1000000)


##-------------builtin functions-------------------------------------
NormalDistribution <- round(rnorm(1000,0,1),2) #1000 values with mean 0, sd 1, rounded 2 decimals
print(NormalDistribution)
mean(NormalDistribution)#should be 0
hist(NormalDistribution)#generates basic hisotgram to fit data
hist(NormalDistribution,breaks = 50) #50 different bars

#optional arguments
expoValue <- function(x,power = 2){
  hist(x^power, breaks = 100)
}
expoValue(NormalDistribution) #notice power is defaulted to 2, but i can change in following
expoValue(NormalDistribution,4)

#passing in other arguments, so I can add other ways or my own ways of doing histogram
expoValue <- function(x,power = 2, ...){
  hist(x^power,...)
}
expoValue(NormalDistribution,power = 2, breaks = 10)

#reassigning in function <- within function, just change the value of the variable 
#this is only in the function


#pattern matching
v <- c('a','b','b','d')
grep('b',v)#what position is b in, from vector v
grepl('b',v)


#factors - showing the types
v_factor <- factor(v)
v_factor
str(v_factor)


#date
Sys.Date()
today <- Sys.Date()
today

as.Date('1990-11-03')
