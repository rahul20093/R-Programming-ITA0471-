# Define the two vectors
vector1 <- 1:9  # Elements for the first matrix
vector2 <- 10:18  # Elements for the second matrix

# Combine the vectors to create the array
combined_vectors <- c(vector1, vector2)

# Create the array of two 3x3 matrices
array_3x3x2 <- array(combined_vectors, dim = c(3, 3, 2))

# Print the entire array
print("The created array of two 3x3 matrices:")
print(array_3x3x2)

# Print the second row of the second matrix
second_row_second_matrix <- array_3x3x2[2, , 2]
print("Second row of the second matrix:")
print(second_row_second_matrix)

# Print the element in the 3rd row and 3rd column of the 1st matrix
element_3rd_row_3rd_col_first_matrix <- array_3x3x2[3, 3, 1]
print("Element in the 3rd row and 3rd column of the 1st matrix:")
print(element_3rd_row_3rd_col_first_matrix)
