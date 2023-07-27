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

# Geometric Mean (Valid only for positive integer)
# Geometric Mean (GM) = (x₁ * x₂ * x₃ * ... * xₙ) ^ (1/n)
get_geometric_mean <- function(vector) {
  n = length(vector)
  prod = 1
  for (x in vector) {
    prod = prod * x
  }
  gm = prod ^ (1 / n)
  return (gm)
}

get_geometric_mean(1:100)


# Harmonic Mean
# HM = n / ((1/x₁) + (1/x₂) + (1/x₃) + ... + (1/xₙ))
get_harmonic_mean <- function(vector) {
  n = length(vector)
  # sum of (1/x₁) + (1/x₂) ...
  sum_reciprocals = 0 # 1/n consider reciprocals
  for (x in vector) {
    sum_reciprocals = sum_reciprocals + x;
  }
  hm = n / sum_reciprocals
  return (hm)
}

get_harmonic_mean(1:100)








