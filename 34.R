#1)
# Load the airquality dataset
data(airquality)

# Check for missing values
num_missing <- sapply(airquality, function(x) sum(is.na(x)))
print(num_missing)

# Drop missing values if less than 10%
drop_cols <- names(num_missing[num_missing < 0.1 * nrow(airquality)])
airquality_dropped <- airquality[, !(names(airquality) %in% drop_cols)]

# Replace missing values with mean if more than 10%
replace_cols <- names(num_missing[num_missing >= 0.1 * nrow(airquality)])
for (col in replace_cols) {
  mean_val <- mean(airquality[[col]], na.rm = TRUE)
  airquality[[col]][is.na(airquality[[col]])] <- mean_val
}

# Print the updated dataset
print(head(airquality))

#2)
airquality_filtered <- na.omit(airquality[, c("Ozone", "Solar.R")])

# Apply linear regression using the Least Squares Method
model <- lm(Ozone ~ Solar.R, data = airquality_filtered)
print(summary(model))

#3)
model <- lm(Ozone ~ Solar.R, data = airquality_filtered)

# Plot the scatter plot with regression line
plot(airquality_filtered$Solar.R, airquality_filtered$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Ozone vs Solar.R")
abline(model, col = "red")