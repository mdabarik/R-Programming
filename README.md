# What is Moment?

The moment function in statistics is a function that describes certain characteristics or properties of a random variable's of a probability distribution. Moments provide an important insight about the shape, center, and spread of a distribution. 

The 'n'-th moment of a random variable 'X' is denoted by μₙ, and it is defined as the expected value of the 'n'-th power of 'X', where 'n' is a positive integer.

Mathematically, the 'n'-th moment (μₙ) of a random variable 'X' is given by:

μₙ = E[Xⁿ]

where:
- E[ ] represents the expected value (or mean).
- Xⁿ denotes the 'n'-th power of the random variable 'X'.

The moments of a probability distribution convey various important properties:

1. The first moment (μ₁) is the expected value of the random variable and represents the center of the distribution.
2. The second moment (μ₂) is the variance of the random variable and measures the spread or dispersion of the distribution.
3. The square root of the second moment (sqrt(μ₂)) is the standard deviation, which is another measure of the spread of the distribution.
4. The third moment (μ₃) is related to skewness, which indicates the asymmetry of the distribution.
5. The fourth moment (μ₄) is related to kurtosis, which characterizes the shape of the distribution's tails.

In summary, moments are used to quantify different aspects of a probability distribution and provide valuable information about its shape, location, and variability. Higher-order moments, beyond the first and second moments, are often used to study more detailed characteristics of the distribution and its behavior.


Higher-order moments (n > 4) can also be calculated to study more detailed characteristics of the distribution. However, in practice, the first four moments are the most commonly used moments, as they provide a good summary of the distribution's behavior.


Resource: https://www.analyticsvidhya.com/blog/2022/01/moments-a-must-known-statistical-concept-for-data-science/


R Code: https://github.com/mdabarik/R-Programming/blob/main/class--02--homework-md-a-barik.R

## first momment (Mean or Average)
The first moment of a dataset or a probability distribution is another term for the mean or expected value of the data.

For a dataset with 'n' data points, the formula for the first moment (mean) is:

Mean (μ) = Σ (xᵢ) / n

where:
- xᵢ represents each data point in the dataset.
- Σ denotes the summation of the values for all data points.
- n is the total number of data points in the dataset.

The first moment is an essential concept in statistics and is widely used in various analyses and applications. It helps to understand the typical value or location around which the data points are distributed, making it a fundamental statistical measure.


## Second Moment (Variance & Standard Deviation )

The second moment is often denoted as μ₂ or σ² (sigma squared). The symbol σ² is used when referring to the population variance, and μ₂ is used when dealing with a random variable's second moment.

σ² = Σ (xᵢ - μ)² / n

where:
xᵢ represents each data point in the dataset.
μ is the mean (average) of the dataset.
Σ denotes the summation of the values for all data points.
n is the total number of data points in the dataset.

In the context of probability distributions, the second moment provides information about how spread out the data is around the mean. A larger value of the second moment (higher variance) indicates a more spread-out distribution, while a smaller value (lower variance) indicates a more concentrated distribution.


Sample Standard Deviation (s) = √[ Σ (xᵢ - x̄)² / (n - 1) ]

## Third Moment (Skewness)
The third moment of a dataset or a probability distribution is a statistical measure that quantifies the skewness of the data. Skewness is a measure of the asymmetry of the probability distribution or dataset. A positive skewness indicates that the tail of the distribution is stretched towards the right, while a negative skewness indicates that the tail is stretched towards the left.

The third moment is often denoted as μ₃. For a dataset with 'n' data points and a mean (average) of 'μ', the formula for the third moment is:

Third Moment (μ₃) = Σ (xᵢ - μ)³ / n

where:
- xᵢ represents each data point in the dataset.
- μ is the mean (average) of the dataset.
- Σ denotes the summation of the values for all data points.
- n is the total number of data points in the dataset.

To understand the skewness using the third moment, the following general rules can be applied:

- If μ₃ > 0: The distribution is positively skewed, meaning it has a long right tail.
- If μ₃ < 0: The distribution is negatively skewed, meaning it has a long left tail.
- If μ₃ = 0: The distribution is symmetric, meaning it is neither positively nor negatively skewed.

Skewness is an important measure in statistics as it helps to identify the shape and symmetry of the data distribution. Skewed data can impact statistical analyses and decision-making, so understanding the skewness is crucial in various fields such as finance, economics, and engineering.


## Fourth moment
The fourth moment of a dataset or a probability distribution is a statistical measure that quantifies the kurtosis of the data. Kurtosis is a measure of the "tailedness" or the sharpness of the peak of the probability distribution or dataset relative to the normal distribution. It provides information about the presence of outliers or extreme values in the data.

The fourth moment is often denoted as μ₄. For a dataset with 'n' data points and a mean (average) of 'μ', the formula for the fourth moment is:

Fourth Moment (μ₄) = Σ (xᵢ - μ)⁴ / n

where:
- xᵢ represents each data point in the dataset.
- μ is the mean (average) of the dataset.
- Σ denotes the summation of the values for all data points.
- n is the total number of data points in the dataset.

The value of the fourth moment can be used to determine the kurtosis of the data distribution:

- If μ₄ > 3: The distribution has positive kurtosis, also known as leptokurtic. It means the distribution has heavier tails and a sharper peak compared to the normal distribution. It indicates the presence of more extreme values or outliers.

- If μ₄ < 3: The distribution has negative kurtosis, also known as platykurtic. It means the distribution has lighter tails and a flatter peak compared to the normal distribution. It indicates the absence of extreme values, and the data are more spread out.

- If μ₄ = 3: The distribution has mesokurtic. It means the distribution has the same kurtosis as the normal distribution.

Kurtosis is an important measure in statistics as it helps to understand the shape and tail behavior of the data distribution. It provides insights into the presence of outliers and the deviation from the normal distribution. Understanding kurtosis is essential in various fields such as finance, risk analysis, and data analysis.







