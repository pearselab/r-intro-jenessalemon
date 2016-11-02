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
  out = sqrt((point2$y - point1$y)^2 + (point2$x-point1$x)^2)
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
  output <- list()
  for (i in 1:length(points)-1){
    output <- list(output, new.line(points[i], points[i+1]))
  }
  class(output) <- "polygon"
  output <- list(output, new.line(points[length(points)], points[1]))
  return(output)
}
polygon <- new.polygon(list(point_1, point_2, point_3))
polygon

#6.
plot.point <- function(point){
  plot(point$x, point$y, xlim= c(0,5), ylim = c(0,5))
}
plot.point(point_1)

plot.line <- function(point1, point2){
  if(!inherits(point1, "point") | !inherits(point2, "point")){
    stop("You haven't given me two points!")
  }
  segments(point1$x, point1$y, point2$x, point2$y)
}
plot.line(point_1, point_2)



polygon.generator <- new.polygon(point1, point2, point3, point4)
if(!inherits(point1, "point") | !inherits(point2, "point"), !inherits(point3, "point") | !inherits(point4, "point"))
  stop("You haven't given me four points!")
out = list(new.line(point1, point2), new.line(point2, point3), new.line(point3, point4), new.line(point4, point1))
return(out)

#7.
plot.polygon <- function(polygon){
  for (i in 1:length(polygon)-1){
    plot.line(polygon[i])
  }
}
plot.polygon(polygon)  


#8.

#9.

#10.
