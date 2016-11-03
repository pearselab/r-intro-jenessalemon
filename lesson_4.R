#Map(function, vector) - applies the funtion to every element of the vector.
#Filter(function, vector) - same as Map, but only returns the values that are evaluated as TRUE.
#Reduce(function, vector) - fold up a vector, cumulatively applying a function to it's elements
#Negate(function) - Return a function that returns the negation of the given function.
#"Lambda calculus" - fancy phrase for no naming a function when you create them.

#Apply family- (applications of the Map function)

#lapply - returns a list
#sapply(function, )- returns a simplified object
#vapply(function) - returns a vector you specify

#mapply - apply to many
#apply - apply to an array. A row and then a cuddle
#tapply - make a table



########################################################################
#1
data <- replicate(10,rnorm(1, rnorm(1), runif(1, min = 0)))

#2
my.summary <- function(input){
  cat("  Min     ", "Max     ", "Mean      ", "Median     ", "\n", min(input), max(input), mean(input), median(input))
}
my.summary(data)

#3
things <- c("candy", "unicorns", "rainbows")
my.categorical.summary <- function(input){
  sweet <- class(input)
  measure <- length(input)
  return(c(sweet, input))
}

my.categorical.summary(things)

#4
flexible.summary <- function(input){
  if(is.numeric(input)){
    return(my.summary(input))
  }else{
    return(my.categorical.summary(input))
  }
}
flexible.summary(data)
flexible.summary(things)

#5


