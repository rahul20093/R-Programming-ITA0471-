# Load the built-in dataset airquality
data(airquality)

# Check if airquality is a data frame
is.data.frame(airquality)  # Output: TRUE

# Order the data frame by the first and second columns
ordered_data <- airquality[order(airquality$Ozone, airquality$Solar.R), ]

# Remove the 'Solar.R' and 'Wind' columns
reduced_data <- ordered_data[, !(names(ordered_data) %in% c("Solar.R", "Wind"))]

# Display the reduced data frame
print(reduced_data)