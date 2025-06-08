# Load the built-in mtcars dataset
data(mtcars)

# See dimensions
dim(mtcars)

# Calculate average miles per gallon
mean(mtcars$mpg)

# Identify car with the highest horsepower
mtcars[which.max(mtcars$hp), ]