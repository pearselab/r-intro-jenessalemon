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
replicate(10,rnorm(1, rnorm(1), runif(1, min = 0)))

#2
my.summary <- function(input){
  cat("  Min     ", "Max     ", "Mean      ", "Median     ", "\n", min(input), max(input), mean(input), median(input))
}
my.summary(replicate(10,rnorm(1, rnorm(1), runif(1, min = 0))))

#3
cat.sum <- function(input)
  cat()
my.categorical.summary <- function(input){
  if(!inherits(input, "character")){
    stop("Input is not categorical.")
  }else{my.summary(input)}
}
my.categorical.summary(replicate(10,rnorm(1, rnorm(1), runif(1, min = 0))))



