
# compute factorial
computeFactorial = function(x) {
  factorial = 1
  for (i in 1:x) {
    factorial = factorial * i
  }
  return (factorial)
}


# permutation: nPr = n! / (n-r)!
computePermuation = function(n, r) {
  nFactorial = computeFactorial(n) # n!
  nrFactorial = computeFactorial(n - r) # (n-r)!
  return (nFactorial / nrFactorial)
}

# combination: nCr = n! / ((n-r)! * r!)
computeCombination = function(n, r) {
  nFactorial = computeFactorial(n) # r!
  nrFactorial = computeFactorial(n - r) # (n-r)!
  rFactorial = computeFactorial(r) # r!
  return (nFactorial / (nrFactorial * rFactorial))
}