#many ways of formatting
print('hello world')
print(paste('hello', 'world'))
print(paste('hello', 'world', sep='_'))
paste0('hello','world,')

#when it prints and it has [1], it means it creates a vector and that is first element

sprintf("%s is %f feet tall", "Ashley", 5.625374111111) #automatically 6 decimal points
sprintf("%d is %d feet tall", "Ashley", 5) #d is only used if integer
sprintf("%s is %.2f feet tall", "Ashley", 5.625374) #naming the number of decimal points

#Guide
  #f is for double, and ._f is for how many decimal points, else automatically 6
  #d is for integer
  #s is for string/character
  #e is for scientific notation