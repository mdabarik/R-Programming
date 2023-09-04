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
    sum_reciprocals = sum_reciprocals + (1/x);
  }
  hm = n / sum_reciprocals
  return (hm)
}
get_harmonic_mean(1:100)


############# Computing Moments in Statistics (R Code) #################
# There are 4 commonly used moments in Statistics
# 1. mean (or average), Mean (μ) = Σ (xᵢ) / n
# 2. variance and standard deviation, Variance σ² = Σ (xᵢ - μ)² / n
# 3. skewness, Skewness (μ₃) = Σ ((xᵢ - μ)³ / (n * σ³))
# 4. kurtosis, Kurtosis (μ₄) = (Σ (xᵢ - μ)⁴ / (n * σ⁴)

#################### First Moment ####################
# formula to compute mean is -> (μ) = Σ (xᵢ) / n
# computing mean (first moment)
get_mean <- function(dataset) {
  n <- length(dataset)
  sum <- sum(dataset) # Σ (xᵢ)
  mean <- sum / n
  return(mean)
}

#################### Second Moment ####################
# formula to compute variance is -> σ² = Σ (xᵢ - μ)² / n
# second moment (variance and standard deviation)
get_variance <- function(dataset) {
  n <- length(dataset)
  mean <- get_mean(dataset)
  sqr_diff_sum <- sum((dataset - mean)^2) # Σ (xᵢ - μ)²
  variance <- sqr_diff_sum / n
  return(variance)
}

# computing second moment (standard deviation)
get_sd <- function(dataset) {
  variance <- get_variance(dataset)
  sd <- sqrt(variance)
  return(sd)
}

#################### Third Moment ####################
# formula to compute skewness is -> (μ₃) = Σ ((xᵢ - μ)³ / (n * σ³))
# computing skewness (third moment)
get_skewness <- function(dataset) {
  n <- length(dataset)
  mean <- get_mean(dataset)
  variance <- get_variance(dataset)
  cubed_diff_sum <- sum(((dataset - mean)^3) / (n * (variance^1.5))) # Σ ((xᵢ - μ)³ / (n * σ³))
  skewness <- cubed_diff_sum
  return(skewness)
}

#################### Fourth Moment ####################
# formula to compute kurtosis is -> (μ₄) = (Σ (xᵢ - μ)⁴ / n) / σ⁴
# Function to calculate the kurtosis (fourth moment)
get_kurtosis <- function(dataset) {
  n <- length(dataset)
  mean <- get_mean(dataset)
  variance <- get_variance(dataset)
  fourth_diff_sum <- sum((dataset - mean)^4) # Σ (xᵢ - μ)⁴
  kurtosis <- (fourth_diff_sum / n) / (variance^2)
  return(kurtosis)
}

# sample data
sample_data <- c(10, 20, 30, 40, 50, 60)
mean_result <- get_mean(sample_data)
variance_result <- get_variance(sample_data)
sd_result <- get_sd(sample_data)
skewness_result <- get_skewness(sample_data)
kurtosis_result <- get_kurtosis(sample_data)



# rth moments
# rthMoment = Σ (xᵢ - μ)^r / (n * sd^r )
rthMoments <- function(vector, r) {
  variance = get_variance(vector)
  n = length(vector)
  xiMeuR = 0
  for (x in vector) {
    xiMeuR = xiMeuR + (x - get_arithmetic_mean(vector))^r
  }
  return (xiMeuR / (n * variance^(r/2)));
}

rthMoments(2:50, 4)

















