#lists - generic vector that can contain object of different types
list1 <- list(x=c(10,20,30), y=c('a','b','c'))
print(list1)

#better than vector, because it can take the different types. Comparison
vcomp <- c("music", 50, "orange", 24.35)
print(vcomp)
lcomp <- list("music", 50, "orange", 24.35) #this allows original state
print(lcomp)

l2 <- list(vcomp, 50, "orangutan")
print(l2) #of course, if a vector is implemented as its own row in the list, it will contain vector normalities

#naming the values, so it displays names instead of [[1]], etc.
names(l2) = c("vector", "number", "character")
print(l2)
#or you can create the names of the list right away, like in list2, 
list2 <- list(nums=c(10,20,30), chars=c('a','b','c'))
print(list2)

#accessing elements, 3 different ways of accessing
  l2[2]
  l2 [["number"]]
  l2$number
  l2[1]
  l2[["vector"]]
  l2$vector
  
  
#compacting/displaying lists
str(l2) #shows the name, then the type, then size (if applies), then the elements

#similar

     