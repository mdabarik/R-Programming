

# Questions (for exam purposes)
# function
# for loop
# different plot (bar, hist, density, box, plot)
# different condition execution

# Principles statistics 1
# Functions for exams (implementation)
# Mean (central, geometry, harmonic)
# Dispersion (variance, standard deviation)
# Moment 
# Skewness, curtosis

# Principles statistics 2
# Correlation function
# 



# formula: mean: sum(Xi) / len
# formula: variance = (sum(Xi - mean)^2) / len
compute_mean <- function(vector) {
  sum = 0
  for (x in vector) {
    sum = sum + x;
  }
  return (sum / length(vector));
}

compute_variance <- function(vector) {
  mean = compute_mean(vector);
  sss = 0;
  for (x in vector) {
    sss = sss + ((x - mean)^2);
  }
  return (sss / length(vector));
}

compute_variance(c(2,2,2,2))



