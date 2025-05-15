install.packages("tidyr")
library(tidyr)
#visualize and model

gather() #make wide data longer (stack columns)
spread() # makes long data wider
seperate() #split single column into multiple columns
unite() #combines multiple columns

n=10
wide <- data.frame(
  ID = c(1:n),
  face1 = c(as.integer(runif(n,200,1000))),
  face2 = c(as.integer(runif(n,200,1000))),
  face3 = c(as.integer(runif(n,200,1000)))
)
View(wide)

#gather()
long<- wide %>% gather(Face, ResponseTime, face1:face3)#fixes the 3 columns from face1 to face3 into a column with faces and column with responsetime
View(long)

#spread()
wide_spread <- long %>% spread(Face, ResponseTime)#each value in face is spread with its respective responsetime
View(wide_spread)

#separate()
long_separate <- long %>% separate(face, c("Target","Number"))






