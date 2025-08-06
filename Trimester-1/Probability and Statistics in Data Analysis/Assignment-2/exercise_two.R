# Importing a necessary library
library(dplyr)

# Reading the text file
data <- read.table("data2.txt", header = TRUE, sep = "")

# Question a-i

# Creating a grid to include all plots
par(mfrow = c(2,3))

# Creating the box plots
boxplot(Y ~ W, data = data, main = "Y vs W", xlab = "W", ylab = "Y")
boxplot(X1 ~ W, data = data, main = "X1 vs W", xlab = "W", ylab = "X1")
boxplot(X2 ~ W, data = data, main = "X2 vs W", xlab = "W", ylab = "X2")
boxplot(X3 ~ W, data = data, main = "X3 vs W", xlab = "W", ylab = "X3")
boxplot(X4 ~ W, data = data, main = "X4 vs W", xlab = "W", ylab = "X4")

# Question a-ii

# ANOVA for Y
anova_Y <- aov(Y ~ W, data = data)
summary(anova_Y)

# ANOVA for X1
anova_X1 <- aov(X1 ~ W, data = data)
summary(anova_X1)

# ANOVA for X2
anova_X2 <- aov(X2 ~ W, data = data)
summary(anova_X2)

# ANOVA for X3
anova_X3 <- aov(X3 ~ W, data = data)
summary(anova_X3)

# ANOVA for X4
anova_X4 <- aov(X4 ~ W, data = data)
summary(anova_X4)

# Question a-iii

# Checking normality

# Normality for Y versus W
qqnorm(residuals(anova_Y), main="Normal Q-Q Plot Y Versus W"); qqline(residuals(anova_Y))
shapiro.test(residuals(anova_Y))

# Normality for X1 versus W
qqnorm(residuals(anova_X1), main="Normal Q-Q Plot X1 Versus W"); qqline(residuals(anova_X1))
shapiro.test(residuals(anova_X1))

# Normality for X2 versus W
qqnorm(residuals(anova_X2), main="Normal Q-Q Plot X2 Versus W"); qqline(residuals(anova_X2))
shapiro.test(residuals(anova_X2))

# Normality for X3 versus W
qqnorm(residuals(anova_X3), main="Normal Q-Q Plot X3 Versus W"); qqline(residuals(anova_X3))
shapiro.test(residuals(anova_X3))

# Normality for X4 versus W
qqnorm(residuals(anova_X4), main="Normal Q-Q Plot X4 Versus W"); qqline(residuals(anova_X4))
shapiro.test(residuals(anova_X4))

# Checking homogeneity of variances

# Importing a library
library(car)

# Homogeneity of variances for Y versus W
leveneTest(Y ~ W, data = data)

# Homogeneity of variances for X1 versus W
leveneTest(X1 ~ W, data = data)

# Homogeneity of variances for X2 versus W
leveneTest(X2 ~ W, data = data)

# Homogeneity of variances for X3 versus W
leveneTest(X3 ~ W, data = data)

# Homogeneity of variances for X4 versus W
leveneTest(X4 ~ W, data = data)

# Showing some diagnostic graphs

# Y versus W
layout(matrix(1:4,2,2))
plot(anova_Y)

# X1 versus W
plot(anova_X1)

# X2 versus W
plot(anova_X2)

# X3 versus W
plot(anova_X3)

# X4 versus W
plot(anova_X4)

# Question b

# Loading necessary libraries
library(GGally)
library(ggplot2)

# Creating a scatter plot matrix
scatter_matrix <- ggpairs(
  data,
  columns = c("Y", "X1", "X2", "X3", "X4"),
  aes(color = W, alpha = 0.6),
  upper = list(continuous = wrap("cor", size = 4)),
  lower = list(continuous = wrap("points", alpha = 0.6)),
  diag = list(continuous = wrap("densityDiag", alpha = 0.6))
)

# Displaying the scatter plot matrix
print(scatter_matrix)

# Question c

# Fitting the linear regression model
model_y_x4 <- lm(Y ~ X4, data = data)

# Displaying the summary of the model
summary(model_y_x4)

# Creating a scatter plot with the regression line
plot(data$X4, data$Y, 
     main = "Regression of Y versus X4", 
     xlab = "X4", 
     ylab = "Y", 
     pch = 19, col = "blue")

# Adding regression line
abline(model_y_x4, col = "red", lwd = 2)

# Question d

# Fitting the regression model with all variables and interaction terms
model_all <- lm(Y ~ (X1 + X2 + X3 + X4) * W, data = data)

# Displaying the summary of the model
summary(model_all)

# Question e

# Residuals versus fitted values
plot(model_all$fitted.values, residuals(model_all),
     main = "Residuals vs Fitted",
     xlab = "Fitted Values", ylab = "Residuals")
abline(h = 0, col = "red")

# Q-Q plot
qqnorm(residuals(model_all))
qqline(residuals(model_all), col = "red")

# Shapiro-Wilk test
shapiro.test(residuals(model_all))

# Homoscedasticity plot
plot(model_all, which = 3)

# Question f

# Applying Stepwise Regression
final_model <- step(model_all, direction = "both", trace = TRUE)
summary(final_model)

# Question g

# Setting new data for prediction
new_data <- data.frame(
  X1 = 120,
  X2 = 30,
  X3 = 10,
  X4 = 90,
  W = "B"
)

# Predicting and getting the confidence interval
prediction <- predict(final_model, newdata = new_data, interval = "confidence", level = 0.95)

# Printing the results
print(prediction)

# Question h

# Creating a categorical variable 'Z' based on quantiles of X4
data$Z <- cut(data$X4, 
              breaks = quantile(data$X4, probs = c(0, 1/3, 2/3, 1), na.rm = TRUE),
              labels = c("Low", "Medium", "High"),
              include.lowest = TRUE)

# Generating the contingency table of Z and W
contingency_table <- table(data$Z, data$W)

# Printing the table
print(contingency_table)

# Question i

# Applying two-way ANOVA
anova_model <- aov(Y ~ W * Z, data = data)

# Displaying the summary of the model
summary(anova_model)

# Checking normality

# Q-Q plot for residuals
qqnorm(residuals(anova_model))
qqline(residuals(anova_model), col = "red")

# Shapiro-Wilk test for normality
shapiro.test(residuals(anova_model))

# Checking homogeneity of variances
leveneTest(Y ~ W * Z, data = data)