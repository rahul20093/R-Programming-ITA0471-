#1)
# Load the airquality dataset
data(airquality)

# Get the summary statistics
summary_stats <- summary(airquality)
print(summary_stats)

#2)
library(reshape2)

# Melt the data
melted_data <- melt(airquality)
print(head(melted_data))

#3)
melted_data <- melt(airquality, id.vars = c("Month", "Day"))
print(head(melted_data))

#4)
casted_data <- dcast(melted_data, Month + Day ~ variable)
print(head(casted_data))

#5)
# Melt the data with month as ID variable
melted_data <- melt(airquality, id.vars = "Month")

# Cast the molten data and compute averages per month
averages_per_month <- dcast(melted_data, Month ~ variable, mean, na.rm = TRUE)
print(averages_per_month)