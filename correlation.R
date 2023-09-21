
# built in function
find_corr <- function(X, Y) {
  return (cor(X, Y))
}

# implementation
compute_correlation <- function(X, Y, xgy=TRUE) {
  n = length(X)
  sumXY = 0
  sumX = 0
  sumY = 0
  sumXSquare = 0
  sumYSquare = 0
  for (i in 1:length(X)) {
    sumX = sumX + X[i];
    sumY = sumY + Y[i];
    sumXY = sumXY + (X[i] *  Y[i])
    sumXSquare = sumXSquare + (X[i] * X[i])
    sumYSquare = sumYSquare + (Y[i] * Y[i])
  }
  lob <- sumXY - ((sumX * sumY) / n) # hor
  hor <- sqrt((sumXSquare - ((sumX * sumX) / n)) * (sumYSquare - ((sumY * sumY) / n))) # lob
  
  corr <- lob / hor
  
  # X given Y and Y given X
  if (xgy == TRUE) {
    coef <- lob / ((n * sumXSquare) - sumX*sumX)
    incept <- (sumY / n) - (coef * (sumX/n))
  } else {
    coef <- lob / ((n * sumYSquare) - sumY*sumY)
    incept <- (sumX / n) - (coef * (sumY/n))
  }
  
  res <- 0 #index 1: correlation, index 2: coefficient, index 3: intercept
  res[1] = corr;
  res[2] = coef;
  res[3] = incept;
  
  # printing the result
  print("r:");
  print(corr);
  print("Beta:");
  print(coef);
  print("Alpha:")
  print(incept)
  
  return (res)
}


H <- c(67, 65, 68, 62, 61)
W <- c(60, 62, 63, 56, 50)
find_corr(H, W)
res1 <- compute_correlation(H, W, xgy=FALSE) #ygx
res2 <- compute_correlation(H, W) #xgy



