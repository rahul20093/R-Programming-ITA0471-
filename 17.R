# Define the vector of values
values <- 1:24

# Define the vector of dimensions
dimensions <- c(3, 4, 2)

# Create the array
my_array <- array(values, dim = dimensions)

# Define the names for each dimension
dimnames(my_array) <- list(
  Dimension1 = c("D1_R1", "D1_R2", "D1_R3"),
  Dimension2 = c("D2_C1", "D2_C2", "D2_C3", "D2_C4"),
  Dimension3 = c("D3_S1", "D3_S2")
)

# Print the array with dimension names
print("Array with dimension names:")
print(my_array)
