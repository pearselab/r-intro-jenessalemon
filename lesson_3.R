#1
#Creating instances of a class using a function
new.cat <- function(length, weight, color){
  output <- list(length=length, weight=weight, color=color)
  class(output) <- "cat"
  return(output)
}
frank <- new.cat(length=4, weight=4, color="brown")
frank

#Creating instances of a class the easy way 
furry <- list(length=20, weight=10, color="black")
class(furry) <- "cat"
kitty <- list(length=30, weight=15, color="white")
class(kitty) <- "cat"
furry
kitty
#Race Method
race <- function(first, second) {
  if(!inherits(first, "cat") | !inherits(second, "cat"))
    stop("You haven't given me two cats!")
  if(first$length > second$length) {
    print("First cat won!")
    return(first)
  }
  print("Second cat won!")
  return(second)
}

race(furry, kitty)
#Print method
print.cat <- function(x, ...){
  cat("This", x$color, "cat weighs", x$weight, "kg.")
}
print.cat(furry)
print.cat(kitty)

#2.
new.point <- function(x,y){
  output <- list(x=x, y=y)
  class(output) <- "point"
  return(output)
}
point_1 <- new.point(x=1, y=2)
point_2 <- new.point(x=2, y=2)
point_3 <- new.point(x=2, y=3)
point_4 <- new.point(x=1, y=5)

#3.
#Function to create new instances of the class "point"
distance <- function(point1,point2) {
  if(!inherits(point1, "point") | !inherits(point2, "point"))
    stop("You haven't given me two points!")
  out <- sqrt((point2$y - point1$y)^2 + (point2$x-point1$x)^2)
  return(out)
}
distance(point_1, point_2)

#4.
new.line <- function(point1, point2){
  output <- list(point1, point2)
  class(output) <- "line"
  return(output)
}
line_1 <- new.line(point_1, point_2)
line_2 <- new.line(point_3, point_4)
plot(point_1, point_2)

#5.
new.polygon <- function(points){
  output <- vector("list", length(points))
  for (i in 1:(length(points)-1)){
    output[[i]] <- new.line(points[[i]], points[[i+1]])
    print(i)
  }
  class(output) <- "polygon"
  output[[length(points)]] <- new.line(points[[length(points)]], points[[1]])
  return(output)
}
hi <- list(point_1, point_2, point_3)
polygon <- new.polygon(hi)
polygon

#6.
plot.point <- function(point){
  plot(point$x, point$y, xlim= c(0,5), ylim = c(0,5))
}
plot.point(point_1)

plot.line <- function(line){
  'if(!inherits(point1, "point") | !inherits(point2, "point")){
    stop("You havent given me two points!")
  }'
  segments(line[[1]]$x, line[[1]]$y, line[[2]]$x, line[[2]]$y)
}
plot.line(line_1)

#7.
plot.polygon <- function(polygon){
  for (i in 1:(length(polygon))){
    print(i)
    plot.line(polygon[[i]])
    print(i)
  }
}
print(polygon)
plot.polygon(polygon)  #use str() and compare.

#8.
new.canvas <- function(point, line, circle, polygon){
  ?????
}

#9. I am assuming when he says object, Will wants us to create a function. Everything is an object in R! 
plot.circle <- function(middle, radius){
  if (!inherits(middle,"point")){
    stop("No middle point given!")
  }
  t <- seq(0,2*pi,length=10000) 
  coords <- t(rbind(middle$x+sin(t)*radius, middle$y+cos(t)*radius)) 
  plot(coords, col = "green") 
}
plot.circle(point_1, 2)

#NOTE: WE WERE TOLD NOT TO MAKE A CIRCLE OUT OF LINES, SO I MADE IT OUT OF POINTS! WHAT ELSE CAN YOU MAKE A CIRCLE OUT OF?

#10.
circle.area <- function(circle)
 
  
  
  
  
  
circle.area(circle_1)
  