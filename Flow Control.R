#if statements
x <- 30.5
if (is.integer(x)){ #says f x is an integer
  print("x is an integer")
} else {
  print("x is not an integer")
}

#while statements
v <- c("Hello World")
count <- 2
while(count < 5){
  print(v)
  count = count +1
}

#for loop
f <- c('apple', 'banana', 'orange', 'watermelon')
for (i in f) { #from i to all values in f
  print(i)
}


#else if
score <- 63
if (score<=60){
  print("bad grade")
} else if (score >60&score<=80) {
  print("okay grade")
} else {
  print("good grade")
}


#break statement in a while loop
x <- 0
while(x<5){
  cat('x is currently ',x,'\n')
  x <- x+1
  if (x==5) {
    print("x is 5!")
    break
  }
}


#for loops

