# Load the necessary libraries
library(datasets)    # For the iris dataset
library(dplyr)       # For data manipulation
library(tidyr)       # For pivot tables
library(psych)       # For summary statistics

# Load the iris dataset
data(iris)

# EDA Steps

# (i) Find dimension, Structure, Summary statistics, Standard Deviation of all features.
dim(iris)
str(iris)
summary(iris)
sapply(iris[, 1:4], sd)

# (ii) Find mean and standard deviation of features grouped by three species of Iris flowers
grouped_stats <- iris %>%
  group_by(Species) %>%
  summarise(across(starts_with("Sepal"), list(mean = mean, sd = sd)),
            across(starts_with("Petal"), list(mean = mean, sd = sd)))
print(grouped_stats)

# (iii) Find quantile value of sepal width and length
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)

# (iv) Create new data frame named iris1 which have a new column name Sepal.Length.Cate that categorizes “Sepal.Length” by quantile
iris1 <- iris %>%
  mutate(Sepal.Length.Cate = ntile(Sepal.Length, 4)) # Categorize Sepal.Length into quartiles

# (V) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
average_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(where(is.numeric), mean, .names = "avg_{.col}"), .groups = 'drop')
print(average_values)

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
average_mean_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(where(is.numeric), list(mean = mean), .names = "mean_{.col}"), .groups = 'drop')
print(average_mean_values)

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
pivot_table <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(starts_with("Sepal"), mean, .names = "mean_{.col}"),
            across(starts_with("Petal"), mean, .names = "mean_{.col}"), .groups = 'drop')
print(pivot_table)

# View the first few rows of the newly created dataframe iris1
head(iris1)