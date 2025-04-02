# Simple Analysis of the 'mtcars' Dataset
# Author: Your Name
# Date: 2025-04-02

# Load necessary libraries
library(ggplot2)

# Load dataset
data("mtcars")
df <- mtcars

# Basic summary
cat("Summary of dataset:\n")
print(summary(df))

# Correlation between horsepower and miles per gallon
cor_hp_mpg <- cor(df$hp, df$mpg)
cat("\nCorrelation between horsepower and mpg:", round(cor_hp_mpg, 2), "\n")

# Scatter plot with regression line
ggplot(df, aes(x = hp, y = mpg)) +
  geom_point(color = "steelblue") +
  geom_smooth(method = "lm", se = FALSE, color = "darkred") +
  labs(
    title = "Horsepower vs. Miles per Gallon",
    x = "Horsepower (hp)",
    y = "Miles per Gallon (mpg)"
  ) +
  theme_minimal()

# Fit linear model
model <- lm(mpg ~ hp, data = df)
cat("\nLinear model summary:\n")
print(summary(model))

# Save model summary to a text file
sink("model_summary.txt")
cat("Linear Model Summary\n")
print(summary(model))
sink()

# Save the plot
ggsave("hp_vs_mpg_plot.png")
