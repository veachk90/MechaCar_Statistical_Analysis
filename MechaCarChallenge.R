# MechaCarChallenge
# Import dependencies
library(dplyr)

# Import MPG data
mpg_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
mpg_data

# Create a linear model for regression
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_data)
mpg_lm
summary(mpg_lm)

# Import suspension coild data
suspension_coil_data <- read.csv(file='Suspension_Coil.csv', check.names = FALSE, stringsAsFactors = FALSE)
suspension_coil_data

# Find the mean, median, variance, and standard deviation of the PSI of suspension coils across all lots
total_summary <- suspension_coil_data %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            std_dev = sd(PSI))
total_summary

# Find the same metrics for each lot individually
lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            std_dev = sd(PSI))
lot_summary

# Using the t.test() function, determine if the PSI across all manufacturing lots is 
# statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil_data$PSI,
       mu=1500)

# Now test the mean of each lot against the population mean of 1,500 PSI.
lot1 <- filter(suspension_coil_data, Manufacturing_Lot == 'Lot1')
lot1
t.test(lot1$PSI, mu=1500)

lot2 <- filter(suspension_coil_data, Manufacturing_Lot == 'Lot2')
lot2
t.test(lot2$PSI, mu=1500)

lot3 <- filter(suspension_coil_data, Manufacturing_Lot == 'Lot3')
lot3
t.test(lot3$PSI, mu=1500)
