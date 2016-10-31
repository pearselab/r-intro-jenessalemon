################################################
## Exercises ###################################
################################################

# c - concatenate
#     - takes two (or more) vector and joins them together
c(1, 2, 3)
c(c(1,2,3), c(4,5,6))
#     - they need to be of the same type, though!
c(1,2, "three")

# cat - concatenates and prints. Useful for producing output in the user-defined functions. Concatenates to a single character vector, appends, and then outputs them.
# cbind- takes a sequence of a vector, matrix, or data-frame argumetns and combine by columns.
# col - Returns a matrix of integers indicating their column number in a matrix-like object, or a factor of column labels.
# row - Returns a matrix of integers indicating their row number in a matrix-like object, or a factor indicating the row labels.
# cut - cut divides the range of x into intervals and codes the values in x according to which interval they fall
# diff - Returns suitably lagged and iterated differences.
# dim - Retrieve or set the dimension of an object.
# rownames, colnames - Retrieve or set the row or column names of a matrix-like object.
# names - get or set the names of an object.
# expand.grid - Create a data frame from all combinations of the supplied vectors or factors. 
# eigen, %*%, lower.tri, upper.tri, diag (try ?"%*%", not ?%*%, as this is an operator, and document
# the function, not the maths
# gl - Generate factors by specifying the pattern of their levels.
# identical - The safe and reliable way to test two objects for being exactly equal.
q = 10
r =  10
identical(q, r)
#[1] TRUE

# image - Creates a grid of colored or gray-scale rectangles with colors corresponding to the values in z. This can be used to display three-dimensional or spatial data aka images.

# library - loads and attaches add on packages.
library(rjags)

# length - get or set the length of vectors, factors, etc.
b = c(1, 2, 3, 4, 5)
length(b)
#[1] 5

# jitter - Add a small amount of noise to a numeric vector.

# lsls and objects - return a vector of character strings giving the names of the objects in the specified environment. 
#what does rm(list=ls()) do? -It clears the environment!

# mean - trimmed arihmetic mean
mean(b)
#[1] 3

# median - computes the sample median
median(b)
#[1] 3

# max and min- Returns the (parallel) maxima and minima of the input values.
max(b) #gives 5
min(b) #gives 1

# paste - Concatenate vectors after converting to character.
paste(1:12)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10"

# read.csv, read.table - Reads a file in table format and creates a data frame from it, with cases corresponding to lines and variables to fields in the file.
#write.csv, write.table- prints its required argument x (after converting it to a data frame if it is not one nor a matrix) to a file or connection.

# pnorm - distribution function for the normal distribution
# dnorm - density for the normal distribution
# qnorm - returns the quantile information for a normal distribution
# rnorm - generates random variables that follow a normal dsitribution
rnorm(10, mean = 0, sd = 1)
#[1]  0.11900991  0.89360284 -0.76321877 -1.17104820 -0.22147221  0.84179280  0.32329981
#[8]  2.04650258 -0.97911853 -0.09913323

# runif - generates random deviates that follow a uniform distribution
runif(5, min = 1, max = 10)
#[1] 3.918565 5.873013 3.435506 4.073200 3.878269

# rpois - generates random devaites that follow a poisson distribution
rpois(10, .9)
#[1] 0 1 0 1 0 0 1 0 1 1

# rank- returns the sample ranks of the values in a vector. 
# Here are the arguments: rank(x, na.last = TRUE,
#ties.method = c("average", "first", "last", "random", "max", "min"))

# sort or order- sorts a vector into ascending or descending order.
sort(b, decreasing = TRUE)
#[1] 5 4 3 2 1

# outer- the outer product of the arrays X and Y is the array A with dimension c(dim(X), dim(Y)) where element A[c(arrayindex.x, arrayindex.y)] = FUN(X[arrayindex.x], Y[arrayindex.y], ...).

# rep- replicates the values in "x".
rep(b)
#[1] 1 2 3 4 5
rep(b, 2)
#[1] 1 2 3 4 5 1 2 3 4 5

# rowSum, colSum- Form row and column sums and means for numeric arrays (or data frames).

# seq- generates regular sequences
seq(10)
#[1]  1  2  3  4  5  6  7  8  9 10

# source- source causes R to accept its input from the named file or URL or connection. Input is read and parsed from that file until the end of the file is reached, then the parsed expressions are evaluated sequentially in the chosen environment.

# which, which.min, which.max - Determines the location, i.e., index of the (first) minimum or maximum of a numeric (or logical) vector.
which.max(b)
#[1] 5

# setdiff, intersect- Performs set union, intersection, (asymmetric!) difference, equality and membership on two vectors.

# table - table uses the cross-classifying factors to build a contingency table of the counts at each combination of factor levels.

# with - Evaluate an R expression in an environment constructed from data, possibly modifying (a copy of) the original data.


################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."



