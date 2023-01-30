# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

There are two variables that distinguish themselves as those least likely to provide a random amount of variance to the mpg metric. These variables are vehicle length and ground clearance. The p-values for vehicle length and ground clearance are twelve and eight orders of magnitude smaller than that the remaining four variables, respectively. Since an alpha value was not specified, I will assume alpha to be 0.05. Thus, the next least-likely variable to have its contribution to the linear model be random is vehicle weight. However, with a p-value of 0.0776, it must be assumed that it is not likely enough to be significant.  

![Multiple Linear Regression Model](https://github.com/veachk90/MechaCar_Statistical_Analysis/blob/main/Screenshot%20(231).png)

Is the slope of the linear model considered to be zero? Why or why not?

The slope of hte linear model is not considered to be zero. In linear regression, the null hypothesis is that the slope of the model's line is 0, meaning that it is likely that each variable's contribution to the model is random. In this case, since at least one variable has statistically-significant p-values, I reject the null hypothesis, which implies that it is likely that the slope of the model's line is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

One of the indicators that a model is overfitting the data is to have a small number of significant variables with strong r-values. In this case, the r-squared value is over 0.7, and as stated previously, there are only two variables that are unlikely to have their contributions to the model be random. Thus, we can reasonably conclude that the model is overfitting the data, and will not be effective in extrapolating to make predictions. 

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

No. Lots 1 and 2 have relatively low variance in the PSI. However, the data shows that Lot 3 had a variance of about 170 PSI. This is far above the maximum variance specified by MechaCar. The overall variance is about 62 PSI, which is within the tolerance specified. Since most of this variation comes from Lot 3, a decision of how to handle it must be made. Depending on the size of the business, the cost per part, and other factors, it could be worthwhile to test each suspension coil individually, then remove those that fall outside of the specified range. In any case, the cause of the variation in Lot 3 must be corrected, or else future lots could suffer the same problem. 

![Overall Variance](https://github.com/veachk90/MechaCar_Statistical_Analysis/blob/main/Screenshot%20(229).png)

![Variance by Lot](https://github.com/veachk90/MechaCar_Statistical_Analysis/blob/main/Screenshot%20(230).png)

## t-test Comparison
Having determined the variation of the PSI in the suspension coils, the next question to ask was whether the variation was statistically significant, even if the PSI variation was within a specified range. The expected mean PSI is 1500, so this was used as the basis for comparison in a series of t-tests. The first compared the mean PSI across all lots with the expected mean of 1500. This produced a p-value of 0.0603, which was above the given alpha of 0.05. Thus, I fail to reject the null hypothesis, which is that there is no significant difference between the observed mean and the expected mean. T-tests for Lot 1 and Lot 2 yielded p-values of 1 and 0.6072, which are also high enough that I fail to reject the null hypothesis. A t-test between the mean PSI of Lot 3 and the expected mean PSI of 1500 produced a p-value of 0.0417, which was below the alpha of 0.05. Thus, I reject the null hypothesis for Lot 3, and conclude that the difference in means is statistically significant.

![t-test Comparisons]()
