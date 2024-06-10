#1)
# Given vector
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Calculate mean
mean_value <- mean(values)
cat("Mean:", mean_value, "\n")

# Calculate median
median_value <- median(values)
cat("Median:", median_value, "\n")

# Calculate mode
mode_value <- as.numeric(names(sort(-table(values)))[1])
cat("Mode:", mode_value)

#2)
# Sort the vector in descending order
sorted_values <- sort(values, decreasing = TRUE)

# Find the 2nd highest value
second_highest <- sorted_values[2]
cat("2nd highest value:", second_highest, "\n")

# Find the 3rd lowest value
third_lowest <- sorted_values[length(sorted_values) - 2]
cat("3rd lowest value:", third_lowest)