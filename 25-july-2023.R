

# Average
getAvg <- function(vector) {
  total <- 0;
  for (x in vector) {
    total = total + x;
  }
  return (total / length(vector))
}

# sum function
getSum <- function(vector) {
  sum <- 0
  for (x in vector) {
    sum = sum + x
  }
  return (sum)
}

# sum(Ci*Gi)
getSumCiGi <- function(credit, gpa) {
  total <- 0
  for (x in 1:length(gpa)) {
    total = total + (gpa[x] * credit[x]);
  }
  return (total)
}

# Computing GPA
getGPA <- function(credit, gpa) {
  totalCredit = getSum(credit)
  totalCiGi = getSumCiGi(credit, gpa)
  return (totalCiGi / totalCredit)
}

# Insert your credit's and gpa's 
credit <- c(3, 2, 3, 3, 3, 2)
gpa <-   c(3.25, 3.5, 4, 3.25, 3, 3.5)
getGPA(credit, gpa)

getSum(1:100)
  
seq(2, 100, 2)
  

















  