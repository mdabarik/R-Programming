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

Resource: https://www.analyticsvidhya.com/blog/2022/01/moments-a-must-known-statistical-concept-for-data-science/