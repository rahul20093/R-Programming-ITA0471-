#a)
# Create the data frame
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

# Extract 3rd and 5th rows with 1st and 3rd columns
result <- exam_data[c(3, 5), c(1, 3)]

print(result)

#b)
countries <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
exam_data$country <- countries

print(exam_data)

#c)
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country = c("USA","UK")
)

# Add new rows to the original data frame
exam_data <- rbind(exam_data, new_exam_data)

print(exam_data)

#d)
sorted_data <- exam_data[order(exam_data$name, exam_data$score), ]
print(sorted_data)

#e)
file_name <- "exam_data.csv"
write.csv(exam_data, file = file_name, row.names = FALSE)