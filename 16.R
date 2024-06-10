# 1. Create a 5x4 matrix filled by rows
matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)
print("5x4 Matrix filled by rows:")
print(matrix_5x4)

# 2. Create a 3x3 matrix with labels filled by rows
labels_3x3 <- c("A", "B", "C", "D", "E", "F", "G", "H", "I")
matrix_3x3 <- matrix(labels_3x3, nrow = 3, ncol = 3, byrow = TRUE)
print("3x3 Matrix with labels filled by rows:")
print(matrix_3x3)

# 3. Create a 2x2 matrix with labels filled by columns
labels_2x2 <- c("X", "Y", "Z", "W")
matrix_2x2 <- matrix(labels_2x2, nrow = 2, ncol = 2, byrow = FALSE)
print("2x2 Matrix with labels filled by columns:")
print(matrix_2x2)
