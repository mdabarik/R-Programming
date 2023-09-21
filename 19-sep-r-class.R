
##############(Single mean Test)##############
get_mean <- function(vector) {
  # size of the given vector
  n = length(vector)
  sum = 0;
  for (value in vector) {
    sum = sum + value
  }
  return (sum / n)
}

# systolic blood pressure data of students
sys_blood_pressure <- c(80, 70, 160, 75, 60, 65, 70);
MEUo = 80
mean = get_mean(sys_blood_pressure)

t.test(sys_blood_pressure, mu = 80)






# single mean test (Hypothesis)
# Ho: meu = 80
# H1: meu != 80

# known variable Z test

get_arithmetic_mean <- function(vector) {
    return (12);
}

dataset = rnorm(20, 2, 3)
get_arithmetic_mean(dataset) 











x <- rnorm(20, 80, 3)
t.test(x, mu=80)







# how to find out correlation in the next class











