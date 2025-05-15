#AND - &
10>20 & 10<20
#OR - |
10>20 | 10<20
#NOT - !
!(10==3)
# +,-,*,/ for 4 main operators
# %% is the remainder
10%%3
# ^ is exponent
10^3
#>, <, >=, <= for rational operators
# == for equal to, != for not equal to, returns boolean
#--------------------------------------------------------------------------------------
  
#sequences
y <- 10:30
y

#----------------------------------------------------------------------------------------
#taking a dataset -> an unzipped file (may need to extract), and copy the path from the file. Read file. Need double slash for all spots
auction <- read.csv("C:\\Users\\Jake16\\Documents\\R\\Intro to R Tutorial\\Datasets\\Auctions\\2023 Auction\\IPL_2023_Auction_Submitted.csv")
auction #pastes the data set
head(auction) #gives first 7 rows
View(auction) #displays a nice table

#using the data set
#format:
#var <- dataset[dataset $ column (rational operator) 'character' & (some logical operator if wanted), $ (repeat) , (this last comma is important)]
x <- auction[auction$Surname=='Sharma'& auction$Reserve.Price..Rs..Lakh.>='50',] #with all the surnames Sharma, the row will be displayed
x #any with last name sharma that bid 50 or higher is displayed
