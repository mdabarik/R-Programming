
#display rows and columns
dim(iris) 

dataset <- iris

# visualization of our dataset
View(dataset)

# rename Sepal.Length with A
colnames(dataset)[colnames(dataset) == "Sepal.Length"] <- "A"

# find the length of column A
length(row(dataset["A"]))

# remove 5 random value from column A
sample <- sample(1:150, 5)
dataset$A[sample] <- NA

View(dataset)

# replace column A with the median of col A
median <- median(dataset$A, na.rm = TRUE)
dataset$A[is.na(dataset$A)] <- median
View(dataset)


# AM, GM, HM, WM, Variance, Moment, Skewness, kurtosis, corelation

# 2, 3, 3, 2, 1
# 2.27







