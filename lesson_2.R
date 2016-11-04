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

'''This is my failed attempt at doing the same thing with a for loop:
  textbox <- function(len, wid) {
    length <- c(1:len)
    width <- c(1:wid)
    for (i in len){
      if (i == 1 | i == len) {
        cat"*"
      }else{
        cat" "
      }
    }
    for (i in wid){
      if (i == 1 | i == wid) {
        cat"*"
      }else{
        cat" "
      }
    }
  }
textbox(5, 10)'''

#10
'''English attempt:
print borders
find middle line and print the words'''

textbox<-function(length, width, message){
  width <- max(width, nchar(message)+2)
  length <- max(length, 3)
  for (i in 1:length){
    j<-1                                          #index
    while(j<=width){
      if(i==1 || i==len || j==1 || j==width){       #|| means "or." We care about these four situations, because they give us the borders of the box.
        cat("*")
      }else{  
        if(i==ceiling(length/2)                           # Puts the words in the middle of the box vertically
           && j==ceiling(width/2)-floor(nchar(message)/2)){  # Puts the words in the middle of the box horizontally and makes it center instead of left align
          cat(message)                                      # Prints the words from the function
          j<-j+nchar(message)-1                             # Get rid of blank spaces so the box is actually a box and not something funky
        }else{
        cat(" ") 
        }
      } 
      j <- j + 1
    }
    cat("\n")
  }
}
textbox(5,5, "Jenessa")

#11 This is not spaced out right, but it's the best I could do.
jib.box<-function(length, width, jibberish, message){
  width <- max(width, nchar(message)+2)
  length <- max(length, 3)
  for (i in 1:length){
    j<-1                                          #index
    while(j<=width){
      if(i==1 || i==len || j==1 || j==width){       #|| means "or." We care about these four situations, because they give us the borders of the box.
        cat(jibberish)
      }else{  
        if(i==ceiling(length/2)                           # Puts the words in the middle of the box vertically
           && j==ceiling(width/2)-floor(nchar(message)/2)){  # Puts the words in the middle of the box horizontally and makes it center instead of left align
          cat(message)                                      # Prints the words from the function
          j<-j+nchar(message)-1                             # Get rid of blank spaces so the box is actually a box and not something funky
        }else{
          cat(" ") 
        }
      } 
      j <- j + 1
    }
    cat("\n")
  }
}
jib.box(5,5, "xyz", "Jenessa")

#12
'''Bernoulli Distribution is a special case of the Binomial distribution where n = 1.
Algorithm: Part 1. Need a function to simulate the probability that a species will be present at a site.
  I need a Binomial distribution with 1 draw, and varying probability.'''

species.presence <- function(p){
  draw <- rbinom(1, 1, p)
  return(draw)
}
species.presence(0.7)

'''This returns a 1 if the species is present, and a 0 if it is not.
Part 2: we need to write a function for abundance, but only if there is indeed, species present. So we probably need an if statement.
The abundance shouldnt differ much from the presence function, except now we are sampling from a Poisson distribution, and also we need to evaluate at n sites (which should require a for loop).'''

species.abundance <- function(n, p, lambda){
  sites <- (1:n)
  for (i in 1:n){
    if (species.presence(p) == 1){
      sites[i] <- rpois(1, lambda)
    }else{
      sites[i] <- 0
    }
    return(sites)  
  }
}
species.abundance(5, 0.7, .5)



#13
'''Create function that takes the number of sites, and vectors of species, and of their p and lambda values
initialize an empty vector the same size as the number of species
evaluate each species with species.abundance
store the results in a matrix
return the matrix'''

hurdle <- function(nsites, species, pvals, lambdas){
  results <- matrix(NA, nrow=nsites, ncol= length(species))
  for (i in nsites){
    my.matrix[,i] <- species.abundance(1, pvals[i], lambdas[i])
  }
  return(results)
}
eriogonum = c("longilobum", "soredium", "shockleyi")
prob <- c(0.5, 0.5, 0.5)
lambda.list <- c(0.5, 0.5, 0.5)
hurdle(5, eriogonum, prob, lambda.list)

#14
'''In English first"
start the function
initialize a vector that stores lat and long values?
create a for loop to loop through the vector 100 times
draw random variables for lat and long (x and y coordinates)
store these as points
plot the points, somehow making lines between them?'''
dumb.biologist <- function(time){
  timestep <- c(x=0, y=0)
  for (x in 1:100){
    timestep[x] <- timestep[x] + rnorm(1, 0, 1)
  }
  for (y in 1:timestep){
    timestep[y] <- timestep[y] + rnorm(1, 0, 1)
  }
  plot(timestep)
}
dumb.biologist(10)




#15 


