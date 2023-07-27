

# There are 4 commonly used moment in Statistics
# 1. mean (or average), Mean (μ) = Σ (xᵢ) / n
# 2. variance and standard deviation, Variation σ² = Σ (xᵢ - μ)² / n
# 3. skewness, Skewness (μ₃) = Σ (xᵢ - μ)³ / n
# 4. curtosis, Curtosis (μ₄) = Σ (xᵢ - μ)⁴ / n


#################### First Moment ####################
# formula to compute skewness is -> (μ) = Σ (xᵢ) / n
# computing mean (first moment)
get_mean <- function(dataset) {
  n = length(dataset)
  sum = 0 # Σ (xᵢ)
  for (x in dataset) {
    sum = sum + x
  }
  
  mean = sum / n
  return(mean)
}

# sample data
# sample_data <- c(10, 20, 30, 40, 50, 60)
# get_mean(sample_data)


#################### Second Moment ####################
# formula to compute skewness is -> σ² = Σ (xᵢ - μ)² / n
# second moment (variance and standard deviation)
get_variance <- function(dataset) {
  n = length(dataset)
  mean = get_mean(dataset)
  sqr_diff_sum = 0 # Σ (xᵢ - μ)²
  for (i in 1:n) {
    sqr_diff_sum = sqr_diff_sum + ((dataset[i] - mean) ^ 2)
  }
  variance = sqr_diff_sum / n
  return (variance)
}

# computing second moment (standard deviation)
# formula to compute standard devition, (s) = √[ Σ (xᵢ - x̄)² / (n - 1) ]
# (s) = √σ²
get_sd <- function(dataset) {
  variance = get_variance(dataset)
  sd = sqrt(variance)
  return(sd)
}

# sample data
# sample_data <- c(10, 20, 30, 40, 50, 60)
# get_sd(sample_data)


#################### Third Moment ####################
# formula to compute skewness is -> (μ₃) = Σ (xᵢ - μ)³ / n
# computing skewness (third moment)
get_skewness <- function(dataset) {
  n = length(dataset)
  mean = get_mean(dataset)
  variance = get_variance(dataset)
  cubed_diff_sum = 0 # Σ (xᵢ - μ)³
  for (i in 1:n) {
    cubed_diff_sum <- cubed_diff_sum + ((dataset[i] - mean)^3)
  }
  skewness <- (cubed_diff_sum / n) / (variance^(3 / 2))
  return(skewness)
}

# sample data
# sample_data <- c(10, 20, 30, 40, 50, 60)
# get_skewness(sample_data)


#################### Fourth Moment ####################
# formula to compute  curtosis is -> (μ₄) = Σ (xᵢ - μ)⁴ / n
# Function to calculate the kurtosis (fourth moment)
get_curtosis <- function(dataset) {
  n = length(dataset)
  mean = get_mean(dataset)
  variance = get_variance(dataset)
  frth_diff_sum = 0 #Σ (xᵢ - μ)⁴
  for (i in 1:n) {
    frth_diff_sum = frth_diff_sum + ((dataset[i] - mean)^4)
  }
  kurtosis = (frth_diff_sum / n) / (variance^2) - 3
  return(kurtosis)
}

# sample data
sample_data <- c(10, 20, 30, 40, 50, 60)
get_skewness(sample_data)










