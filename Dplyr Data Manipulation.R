#transform and summarize tabular data
install.packages("dplyr")
library(dplyr)

select() #selects column variables based on their names
filter() #filter rows based on their values
arrange() # changes ordering of rows
summary() #reduces multiple values down to a single summary
mutate() #creates columns that are function of existing variables

View(auction)
head(auction) #helps us with what columns so we dont have to switch


#filter
roles <- filter(auction, Role=="BATSMAN", Age>30&Age<=35) #can have as many conditions as you want
roles
View(roles) #this basically takes everyone else out and renumbers

roles_format <- auction[auction$Role=="BATSMAN" & auction$Age>30 & auction$Age<=35,]
View(roles_format) #this will keep what row they were originally in


#slice
slice(auction,2:6, 9:12) #shows these rows


#mutate - a function to add a columns
emails <- mutate(auction, Player.Emails = paste0(First.Name,Surname,"@",Role,".com"))
View(emails)
emails_better <- mutate(auction, Player.Emails = tolower(paste0(substr(First.Name,1,1), Surname, "@", Role, ".com")))
emails_better <- select(emails_better, First.Name,Surname,Player.Emails,everything())
View(emails_better) #this creates player email and moves it to 3rd column
auction_fixed <- emails_better #now to make sure its saved into auction_fixed as my fixed set
View(auction_fixed)

#transmute - just creates the new column, doesn't add to existing
emails_trans <- transmute(auction, Player.Emails = tolower(paste0(substr(First.Name,1,1), Surname, "@", Role, ".com")))
View(emails_trans)

#summarise() - summarize certain columns, whatever function you choose
summary <- summarise(auction, Avg_age=mean(Age, na.rm=T), Avg_ipl=mean(IPL,na.rm=T))
View(summary)

#group -> group_by()
age_summary <- auction %>% #from data set auction
  group_by(Age) %>% #group by the age
  summarise(Count = n(), #summarise, the count for each age and the average IPL
            Average_IPL = mean(IPL, na.rm = TRUE))
View(age_summary)
#this format allows for easier readability
age_summary <- summarise(group_by(auction, Age),Count = n(),Average_IPL = mean(IPL, na.rm = TRUE))
View(age_summary)

# %>% is the pipe operator. Easier for nesting


#sample_n() - creates a sample of the data
sample_n(auction,10) #shows 10 rows
sample_frac(auction,.02) #shows 2% of the rows as a sample


#arrange() - sort dataset
View(arrange(auction,Age)) #organizes by age
