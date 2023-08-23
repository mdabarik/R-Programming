
# formula: mean: sum(Xi) / len
# formula: variance = (sum(Xi - mean)^2) / len
compute_mean <- function(vector) {
  sumXi = 0
  for (x in vector) {
    sumXi = sumXi + x;
  }
  return (sumXi / length(vector));
}

compute_variance <- function(vector) {
  mean = compute_mean(vector);
  sss = 0;
  for (x in vector) {
    sss = sss + ((x - mean)^2);
  }
  return (sss / length(vector));
}

compute_variance(c(2,2,2,2,3,4,5,6,7,8,9));




# function AH, GM, HM, Variance, Moment(skewness, curtosis)



















