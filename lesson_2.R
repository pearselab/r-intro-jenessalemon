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

#3
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
time <- seq(0, 60, by = 1) #creating a sequence of time 
time                       #printing ot make sure it worked
plot.gompertz <- function(a, b, c, t, ...){
  for (i in 0:length(time){                   #for each time, 
    points <- gompertz(a, b, c, t ...)        #points is a vector containing the population size data for each point.
  }
  print(points) #the points are not being stored into this vector. The print statement shows that.
  plot(time, points, xlab = "Time", ylab = "Population Size", main = "Progress of Population Over Time")
}
plot.gompertz <- function(10, 5, 38, 3, ...)
  
plot.gompertz <- function(a, b, c, t){
  for (t in 0:
}



#7
  
#8
  
#9.
#cat("*****", "\n", "*   *", "\n", "*****")  not a function, but works kinda.
box = function(length, width){
  vector <- (rep("*"), x)
  cat(vector, "\n")
  cnt
}
  
cat("*****", "\n", "*   *", "\n", "*****")  

ImABox <- function(width,height){
  ast.vect <- c("*")
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #saying repeat asteric vector the same number of times as width
  cat("\n")     #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in width){
    cat(ast.vect, paste(rep(" ", times=(1/2*(width-2)))), ast.vect) #something is wrong here
  }
  cat("\n") 
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #last line
}
ImABox(3, 5)

  




