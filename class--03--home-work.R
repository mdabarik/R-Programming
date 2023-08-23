# Home Work -- class 3
# generate x from poisson, replace 5 data randomly as NA (missing)
# generate y from normal with mean, mean(poisson)*6 
# replace missing of poisson with the 
# mean of poisson
# draw boxplot

# seed for reproducibility
set.seed(123)

# Generate data
n <- 100  # number of data
lambda <- 3  # lamda of poisson dist

# generating x from poisson
x <- rpois(n, lambda)
View(x)

# missing values in x
missing_indices <- sample(1:n, 5)
x[missing_indices] <- NA

# mean of poisson dist
poisson_mean <- mean(x, na.rm = TRUE)

# replace missing values with Poisson mean
x[is.na(x)] <- poisson_mean

# generating y from normal distribution with mean = mean(poisson) * 6
y_mean <- poisson_mean * 6
y <- rnorm(n, mean = y_mean, sd = 1) # standard deviation

# Draw boxplot
boxplot(x, main = "Boxplot of x", ylab = "x values")

# combine x and y into a data frame
df <- data.frame(x, y)
# printing data frame
print(data)
View(data)
