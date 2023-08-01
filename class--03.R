
x <- rpois(100, 20)

# randomly 5 missing
# fill missing with the median of x

sample <- sample(1:100, 5)
x[sample] <- NA
x[is.na(x)] <- median(x, na.rm=TRUE)


# 5 missing, find mean
x <- rpois(100, 20)
sample <- sample(1:100, 5)
x[sample] <- NA

get_mean <- function(x) {
  sum <- 0
  count <- 0
  for (n in x) {
    if (!is.na(n)) {
      sum = sum + n
      count = count + 1;
    }
  }
  return (sum / count)
}

get_mean(x)

# Home Work -- class 3
# generate x from poisson, replace 5 randomly missing
# generate y from normal with mean of poisson*6 and replace missing with the 
# mean of poisson
# box plot

# IQR -> Interquatile range


x <- c(1, 2, 3, 4, 5)
y <- c(4, 5, 7, 8, 9)

boxplot(x, y)



X <- rnorm(20, mean=20, sd=20^0.5);

# outlier detection using boxplot with the help of iqr
get_grade <- function(num) {
  
}

# mean of vowels (df row name)

data <- iris
data[1,]

a <- c(1,2)
a[4] = 3

# for loop for specific observations
x <- rpois(100, 20)
obs <- which(18 < x & x < 22)
sm <- 0
for (i in obs) {
  sm <- sm + x[i]
}











