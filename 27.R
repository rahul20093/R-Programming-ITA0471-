# Load the women dataset
data("women")

# Print the dataset to see its structure
print("The women dataset:")
print(women)

# Create a factor corresponding to the height
height_factor <- factor(women$height)

# Print the factor
print("The factor corresponding to the height of women:")
print(height_factor)
