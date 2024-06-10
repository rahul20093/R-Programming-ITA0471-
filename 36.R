#1)
# Load the ChickWeight dataset
data(ChickWeight)

# Create a box plot for weight grouped by Diet
boxplot(weight ~ Diet, data = ChickWeight, main = "Box Plot of Weight by Diet", xlab = "Diet", ylab = "Weight")

#2)
weights_diet1 <- ChickWeight$weight[ChickWeight$Diet == 1]

# Create a histogram for weights in Diet-1 category
hist(weights_diet1, main = "Histogram of Weight for Diet-1", xlab = "Weight", ylab = "Frequency")

#3)
# Create a scatter plot for weight vs Time, grouped by Diet
plot(ChickWeight$Time, ChickWeight$weight, main = "Scatter Plot of Weight vs Time by Diet", xlab = "Time", ylab = "Weight", pch = as.integer(ChickWeight$Diet))
legend("topright", legend = levels(ChickWeight$Diet), pch = 1:4, title = "Diet")