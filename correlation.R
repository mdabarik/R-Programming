


# built in function
find_corr <- function(X, Y) {
  return (cor(X, Y))
}

# implementation
compute_correlation <- function(X, Y) {
  n = length(X)
  sumXY = 0
  sumX = 0
  sumY = 0
  sumXSquare = 0
  sumYSquare = 0
  for (i in 1:length(X)) {
    sumXY = sumXY + (X[i] *  Y[i])
    sumX = sumX + X[i];
    sumY = sumY + Y[i];
    sumXSquare = sumXSquare + (X[i] * X[i])
    sumYSquare = sumYSquare + (Y[i] * Y[i])
  }
  lob <- sumXY - ((sumX * sumY) / n) # hor
  hor <- sqrt((sumXSquare - ((sumX * sumX) / n)) * (sumYSquare - ((sumY * sumY) / n))) # lob
  return (lob / hor)
}


H <- c(67, 65, 68, 62, 61)
W <- c(60, 62, 63, 56, 50)
find_corr(H, W)
compute_correlation(H, W)