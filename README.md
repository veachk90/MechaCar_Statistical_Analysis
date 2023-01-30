# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

There are two variables that distinguish themselves as those least likely to provide a random amount of variance to the mpg metric. These variables are vehicle length and ground clearance. The p-values for vehicle length and ground clearance are twelve and eight orders of magnitude smaller than that the remaining four variables, respectively. Since an alpha value was not specified, I will assume alpha to be 0.05. Thus, the next least-likely variable to have its contribution to the linear model be random is vehicle weight. However, with a p-value of 0.0776, it must be assumed that it is not likely enough to be significant.  

Is the slope of the linear model considered to be zero? Why or why not?

The slope of hte linear model is not considered to be zero. In linear regression, the null hypothesis is that the slope of the model's line is 0, meaning that it is likely that each variable's contribution to the model is random. In this case, since at least one variable has statistically-significant p-values, I reject the null hypothesis, which implies that it is likely that the slope of the model's line is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

One of the indicators that a model is overfitting the data is to have a small number of significant variables with strong r-values. In this case, the r-squared value is over 0.7, and as stated previously, there are only two variables that are unlikely to have their contributions to the model be random. Thus, we can reasonably conclude that the model is overfitting the data, and will not be effective in extrapolating to make predictions. 

