
# dataset
X <- c(28, 26, 33, 24, 34, -44, 27, 16, 40, -2, 29, 22, 24, 21, 25, 30, 23, 29, 31, 19)
# computing median of dataset X
medX = median(X)
# computing mean absolute deviation, MAD(x) = Median(|x - median(x)|) 
madX = median(abs(X - medX))
# computing mean absolute deviation, MADN(x) = median(x) / 0.675
madnX = madX / 0.675

# segma and meu not
segma = madnX
meui = medX

# helper function
findSign <- function(x) {
  if (x == 0) {
    return (0);
  } else if (x < 0) {
    return (-1);
  } else {
    return (1);
  }
}
findSaiSimple <- function(x, k) {
  if (abs(x) <= k) {
    return (x);
  } else {
    if (k == 0) {
      k = 1;
    }
    sign = findSign(x);
    return ((sign * k));
  }
}
findSaiComplex <- function(x, k) {
  if (abs(x) <= k) {
    return (1);
  }
  return (0);
}
findW <- function(x, k) {
  wx = 0
  if (x != 0) {
    wx = findSaiSimple(x, k) / x;
  } else {
    wx = findSaiComplex(x, k);
  }
  return (wx);
}
# algorithms
prevMeui = meui
k = 0
while (TRUE) {
  sumWiXi = 0
  sumWi = 0
  for (i in 1:length(X)) { # 1 to n
    sumWiXi = sumWiXi +  (findW(((X[i] - prevMeui) / segma), k) * X[i])
    sumWi = sumWi + findW(((X[i] - prevMeui) / segma), k)
    
  }
  meuK1 = sumWiXi / sumWi
  print(sumWiXi)
  print(sumWi)
  print(meuK1)
  
  
  if ((meuK1 - prevMeui) < (0.1 * segma)) {
    prevMeui = meuK1
    break
  }
  
  prevMeui = meuK1
  k = k + 1
}

print(prevMeui)













