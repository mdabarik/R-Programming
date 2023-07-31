
compute_mean <- function(vector) {
  sum = 0
  for (x in vector) {
    sum = sum + x;
  }
  return (sum / length(vector))
}

# 12 16 18 2 4 3 7 8 9 10 3 7
vector1 <- c(12, 16, 18, 2, 4, 3, 7, 8, 9, 10, 3, 7)
compute_mean(vector1)

#1 - 3, 7 - 9, 11, 12
vector2 <- c(1:3, 7:9, 11, 12)
compute_mean(vector2)

names <- c("karim", "jamal", "mina")
age <- c(67, 63, 62)


df <- read.csv(file)


dni3 <- dimnames(iris3)
dni3["setosa"]


dni3 <- dimnames(iris3)
ii <- data.frame(matrix(aperm(iris3, c(1,3,2)), ncol = 4,
                        dimnames = list(NULL, sub(" L.",".Length",
                                                  sub(" W.",".Width", dni3[[2]])))),
                 Species = gl(3, 50, labels = sub("S", "s", sub("V", "v", dni3[[3]]))))
all.equal(ii, iris) # TRUE
View()

dni3 <- dimnames(iris3)

View(iris3)

data(iris)
df <- iris
df
View(df)



rownames(df)

df["Species"] <- 
  
str(rownames(df))
df[-"Species"]

x <- c(5, 7, 3, 2, 30)
for (i in 1:length(x)) {
  if (x[i] == 30) {
    x[i] = 5
  }
}

View(iris)
median(1:100, na.rm = TRUE)



