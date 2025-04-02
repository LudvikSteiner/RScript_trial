# RScript_trial
A minimal example of data analysis in R using the built-in mtcars dataset. The script demonstrates data exploration, correlation analysis, linear regression, and visualization using ggplot2. Results are saved as both a plot and a summary text file. Suitable as a starter template or simple demonstration of R scripting on GitHub.

# Simple Analysis of the `mtcars` Dataset

This repository contains a basic R script that performs a simple statistical analysis and visualization of the built-in `mtcars` dataset in R. The goal is to demonstrate how horsepower (hp) affects miles per gallon (mpg) using a linear regression model.

## Files

- `analysis_mtcars.R`: The main R script that loads the data, performs analysis, generates plots, and saves outputs.
- `model_summary.txt`: Output file containing the summary of the linear regression model.
- `hp_vs_mpg_plot.png`: Scatter plot with a linear regression line saved as a PNG file.

## Requirements

This script uses only base R and the `ggplot2` package. To install `ggplot2`, run:

```r
install.packages("ggplot2")

