
#The fasting blood sugar (FBSx) of 10 randomly selected patients are given below:
#110,118, 130, 140, 142, 146, 112, 100, 95, 98
blood_sugar <- c(110, 118, 130, 140, 142, 146, 112, 100, 95, 98)

# Line Chart Drawing
x <- 1:length(blood_sugar)
plot(x, blood_sugar, type = "o", pch = 19, ylim = c(0, max(blood_sugar) + 10), 
     xlab = "Measurement", ylab = "Blood Sugar")
lines(x, blood_sugar, type = "o", pch = 19)
grid()
title("Blood Sugar Over Time")


hypothesized_mean <- 120
# one-sample mean test
t_test_result <- t.test(blood_sugar, mu = hypothesized_mean)
t_test_result$p.value

# Print the result
print(t_test_result)






