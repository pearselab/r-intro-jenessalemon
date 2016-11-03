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

#Exercises: Complete: 1, 2, 3, 4, 5, 6, 
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
plot.gompertz <- function(time1, time2, by, a, b, c){
  time <- seq(time1, time2, by)     #creates a vector of time values
  vect <- c(NA)               #creates an empty vector
  for (i in 1:length(time)){                   #for each time, 
    points <- gompertz(time1+(i-1)*by, a, b, c)    #Why are we minusing and then timsing by by?    #points is a vector containing the population size data for each point.
    vect[i] <- points
    }
    print(points) #the points are not being stored into this vector. The print statement shows that.
    plot(x=time, y=vect, xlab="Time", ylab="Population Size", main="Progress of Population Over Time")
    abline(h=a, col="blue")
    abline(h=b, col="red")
}
plot.gompertz(1, 5, 0.5, 38, 3, 5)

  
#7
plot.gompertz <- function(time1, time2, by, a, b, c){
  time <- seq(time1, time2, by)     #creates a vector of time values
  vect <- c(NA)               #creates an empty vector
  color <- c(NA)              #here we                                                
  for (i in 1:length(time)){                   #for each time, 
    points <- gompertz(time1+(i-1)*by, a, b, c)    #Why are we minusing and then timsing by by?    #points is a vector containing the population size data for each point.
    vect[i] <- points
    if(b > a){
      if(points > b){
      color[i] <- "red"
      }
      if(points > a & points < b){
        color[i] <- "blue"
      }else{
        color[i] <- "black"
      }
    }
    if(a > b){
      if(points > a){
        color[i] <- "blue"
      }
      if(points > b & points < a){
        color[i] <- "red"
      }else{
        color[i] <- "black"
      }
    }
  }
  plot(x=time, y=vect, xlab="Time", ylab="Population Size", main="Progress of Population Over Time", col=color)
  abline(h=a, col="blue", lty=2)
  abline(h=b, col="red", lty=2)
  print(a)
  print(b)
}
plot.gompertz(1, 5, 0.5, 4, 2, 5)

'''What I had before:
if(points > a){
  color[i] <- "blue"
}else{
  color[i] <- "black"
}
if(points > b){
  color[i] <- "red"
}else{
  color[i] <- "black"
}
if(points > b & points < a){
  color[i] <- "blue"
}
if(points > a & points < b){
  color[i] <- "blue"
}
'''
  
#8
plot.gompertz <- function(time1, time2, by, a, b, c){
  time <- seq(time1, time2, by)     #creates a vector of time values
  vect <- c(NA)               #creates an empty vector
  color <- c(NA)              #here we                                                
  for (i in 1:length(time)){                   #for each time, 
    points <- gompertz(time1+(i-1)*by, a, b, c)    #Why are we minusing and then timsing by by?    #points is a vector containing the population size data for each point.
    vect[i] <- points
    if(b > a){
      if(points > b){
        color[i] <- "red"
      }
      if(points > a & points < b){
        color[i] <- "blue"
      }else{
        color[i] <- "black"
      }
    }
    if(a > b){
      if(points > a){
        color[i] <- "blue"
      }
      if(points > b & points < a){
        color[i] <- "red"
      }else{
        color[i] <- "black"
      }
      if(points >a & points >b){
        color[i] <- "purple"
      }
    }
  }
  plot(x=time, y=vect, xlab="Time", ylab="Population Size", main="Progress of Population Over Time", col=color)
  abline(h=a, col="blue", lty=2)
  abline(h=b, col="red", lty=2)
  print(a)
  print(b)
}
plot.gompertz(1, 5, 0.5, 4, 2, 5)

  
#9.
#cat("*****", "\n", "*   *", "\n", "*****")  not a function, but works kinda.

#MARLEY, REMIND ME HOW LINE 157 PREVENTS AN INFINITE LOOP.

funbox<-function(len,wid){
  for (i in 1:len){
    j<-1                                          #index
    while(j<=wid){
      if(i==1 || i==len || j==1 || j==wid){       #|| means "or." We care about these four situations, because they give us the borders of the box.
        cat("*")
      }else{                                      #If that is not the case we just want blank space.
        cat(" ")
      }
      j<-j+1                                      #prevents an infinite loop? MARLEY REMIND ME WHY WE DID THIS?
    } 
    cat("\n")                                     #We need a new line every iteration.
  }
}
funbox(5,5)

#10
Attempt 1
box<-function(len, wid, string){
  length <- c(1:len)
  width <- c(1:wid)
  for (i in 1:len){
    cat("")
      }
      if(i == median(length)){
        cat(character.string)
      }else{                                      #If that is not the case we just want blank space.
        cat(" ")
      }
      j<-j+1                                      #prevents an infinite loop? MARLEY REMIND ME WHY WE DID THIS?
    } 
    cat("\n")                                     #We need a new line every iteration.
  }
  print(length)
}
box(5, 5, "Hi there!")


textbox<-function(len, height, string){
  box <- matrix(data = "*", nrow = height, ncol = len)
  for (row in box){
    if(i == 2){
      cat("Hi")
    }
  }
  print(box)
}
textbox(5, 5, "Jenessa")
  
   
}
  else{
        if(i==ceiling(length/2)                           # Vertical middle
           & j==ceiling(width/2)-floor(nchar(string)/2)){  # Horizontal middle
          cat(string)                                      # Printing
          j<-j+nchar(string)-1 
          }else{                                      #If that is not the case we just want blank space.
            cat(" ")
        }
    } #closes the while loop 
    cat("\n")                                     #We need a new line every iteration.
  } #closes the for loop
} #closes the function
textbox(5,10, "Jenessa Rocks!")


#10
textbox <- function(len, wid, string){
  empty.box <- matrix(data = NA, nrow = len, ncol = wid)
  for (i in empty.box){
    if (i=1){
      print ("*")
    }else{
      cat(" ")
    }
  }
}
textbox(5, 5, "Hi")




#12
'''Bernouli Distribution is a special case of the Binomial distribution where n = 1.
Algorithm: Part 1. Need a function to simulate the probablility that is species will be present at a site.
  I need a Binomial distribution with 1 draw, and varying probablility.'''

species.presence <- function(p){
  draw <- rbinom(1, 1, p)
  return(draw)
}
species.presence(0.7)

'''This resturns a 1 if the species is present, and a 0 if it is not.
Part 2: we need to 

species.abundance -> function(n, p, lambda)
  

  




