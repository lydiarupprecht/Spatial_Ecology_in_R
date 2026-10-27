# Script for using R

matteo <- c(5, 10, 20, 50, 80) # an array is a set of elements: this is the array of mammal species
elisa <- c(100, 80, 50, 20, 10) # an array of human deaths due to a disease 
plot(matteo, elisa)

#  [changing the point character](https://r-charts.com/base-r/pch-symbols/) 
plot(matteo, elisa, pch=19)

# changing size of point characters 
plot(matteo, elisa, pch=19, cex=2)

# changing the color https://r-charts.com/colors/
plot(matteo, elisa, pch=19, cex=2, col="blue")

# changing the labels
plot(matteo, elisa, pch=19, cex=2, col="chartreuse3", xlab="number of mamals", ylab="number of human deaths")

# changing axis dimension
plot(matteo, elisa, pch=19, cex=2, col="chartreuse3", xlab="number of mamals", ylab="number of human deaths", cex.axis=2)

# long function!
plot(matteo, 
     elisa, 
     pch=19, 
     cex=4, 
     col="maroon2", 
     xlab="number of mamals", 
     ylab="number of human deaths", 
     cex.axis=2,
     cex.lab=2)


     cex.lab=2)
