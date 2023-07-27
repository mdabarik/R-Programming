# Arithmetic Mean
# Arithmetic Mean (AM) = (x₁ + x₂ + x₃ + ... + xₙ) / n
get_arithmetic_mean <- function(vector) {
  # size of the given vector
  n = length(vector)
  sum = 0;
  for (value in vector) {
    sum = sum + value
  }
  return (sum / n)
}

vector <- seq(from = 1, to = 100, by = 1)
get_arithmetic_mean(vector)

# Geometric Mean
# Geometric Mean (GM) = (x₁ * x₂ * x₃ * ... * xₙ) ^ (1/n)
get_geometric_mean <- function(vector) {
  
}



# Harmonic Mean








