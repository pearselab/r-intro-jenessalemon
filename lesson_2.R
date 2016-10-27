value <- 5          #returns "Good news!"
if(value <= 5){
  print("Good news!")
}

value <- 5          #returns "Greater than or equal to five!"
if(value < 5){
  print("Less than five!")
} else {
  print("Greater than or equal to five!")
}

Exercises:
#1
  for (i in 20:10){
  print (i)
  }

#2
is.even <- function(x) {
  (x %% 2 == 0) 
} 
for (i in 20:10) {
    if (is.even(i)) {
        print (i)
    }
} 

#3"
is.prime <- function(x){
  for (i in 2:(x-1)) {
    flag = x %% i
    if (flag == 0) {
      out <- c(x,"is not a prime number.")
      #print(out)
      return(FALSE)
      }
    }
  out2 <- c(x,"is a prime number!")
  #print(out2)
  return(TRUE)
}

is.prime(7)
is.prime(8)
is.prime(10)

#4
for (i in 1:20){
  if (i %% 5 == 0){
    print("Good:")
    print(i)
    if (i %% 5 == 0 & is.prime(i) == TRUE){
      print("Job:")
      print(i)}
  }
}

#5
gompertz <- function(a, b, c, t){
  y = a*exp(-b*exp(-c*t))
  return(y)
}
gompertz(100, 0.1, 5, 10)

#6
gompertz.time <- function(x,y){
  x = t$gompertz
  y = gompertz(y)
  
  




