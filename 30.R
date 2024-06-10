# Load the necessary libraries
library(datasets)    # For the iris dataset
library(caret)       # For creating confusion matrix
library(dplyr)       # For data manipulation

# Load the iris dataset
data(iris)

# Check the structure of the dataset
str(iris)

# Set a seed for reproducibility
set.seed(123)

# Split the data into training (80%) and testing (20%) sets
trainIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Create logistic regression model using training data
model <- glm(Species ~ Petal.Length + Petal.Width, data = trainData, family = binomial)

# Predict the probabilities using the test data
predictions <- predict(model, newdata = testData, type = "response")

# Convert probabilities to predicted classes
predicted_classes <- as.factor(ifelse(predictions > 0.5, "virginica", "versicolor"))

# Create a confusion matrix
confusion_matrix <- confusionMatrix(predicted_classes, testData$Species)

# Print the confusion matrix
print(confusion_matrix)