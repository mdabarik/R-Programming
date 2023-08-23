

compute_factorial <- function(n) {
  fact = 1;
  for (x in 1:n) {
    fact = (fact * x);
  }
  return (fact);
}

factorial <- function(n) {
  if (n == 0 || n == 1) return (1);
  return (n * factorial(n - 1));
}


checkNum <- function(n) {
  message = "invalid input";
  if (n == 0) {
    message = "zero";
  } else if (n < 0) {
    message = "negative";
  } else {
    message = "positive";
  }
  return (message);
}


