# Importing a necessary library
library(dplyr)

# Reading the text file
data <- read.table("cholesterol.txt", header = TRUE, sep = "")

# Question a

# Creating a 99% confidence interval for Cholesterol values
chol_ci <- t.test(data$Cholesterol, conf.level = 0.99)

# Printing the result
print("99% Confidence Interval for Cholesterol values:")
print(chol_ci$conf.int)

# Question b

# Filtering of data based on the drug type
drug_a_data <- data %>% filter(Drug == "A")
drug_b_data <- data %>% filter(Drug == "B")

# Creating a 95% Confidence Interval for Cholesterol values with drug A
chol_ci_drug_a <- t.test(drug_a_data$Cholesterol, conf.level = 0.95)

# Printing the result
print("95% Confidence Interval for Cholesterol values after receiving the drug A:")
print(chol_ci_drug_a$conf.int)

# Creating a 95% Confidence Interval for Cholesterol values with drug B
chol_ci_drug_b <- t.test(drug_b_data$Cholesterol, conf.level = 0.95)

# Printing the result
print("95% Confidence Interval for Cholesterol values after receiving the drug B:")
print(chol_ci_drug_b$conf.int)

# Question c

# Creating a 90% Confidence Interval for the mean difference in Cholesterol values with drug A and B
chol_diff_ci <- t.test(drug_a_data$Cholesterol,drug_b_data$Cholesterol,var.equal=FALSE,conf.level = 0.90)

# Printing the result
print("90% Confidence Interval for the mean difference in Cholesterol values after receiving drug A and drug B:")
print(chol_diff_ci$conf.int)

# Question d

# Performing t-test
chol_less_test <- t.test(
  drug_a_data$Cholesterol, 
  drug_b_data$Cholesterol, 
  alternative = "less",
  var.equal = FALSE,
  conf.level = 0.95
)

# Printing the results
print(chol_less_test)

# Question e

# Performing F-test for equality of variances
glucose_var_test <- var.test(
  drug_a_data$Glucose, 
  drug_b_data$Glucose, 
  alternative = "two.sided",
  conf.level = 0.99
)

# Printing the results
print(glucose_var_test)

# Question f

# Performing a t-test for Glucose levels with drug A and B
glucose_side_effect_test <- t.test(
  drug_a_data$Glucose, 
  drug_b_data$Glucose, 
  alternative = "two.sided",
  var.equal = FALSE,
  conf.level = 0.95
)

# Printing the results
print(glucose_side_effect_test)

# Question g

# Filtering of data based on the presence of Myalgia
with_myalgia_data <- data %>% filter(Myalgia == "Yes")
without_myalgia_data <- data %>% filter(Myalgia == "No")

# Creating a 95% Confidence Interval for the proportion of volunteers who had Myalgia symptoms
with_myalgia_prop_ci <- binom.test(
  x = count(with_myalgia_data)$n,
  n = count(data)$n,
  conf.level = 0.95
)

# Printing the result
print("95% Confidence Interval for the proportion of volunteers who had Myalgia symptoms:")
print(with_myalgia_prop_ci$conf.int)

# Question h

# Performing a test
with_myalgia_prop_test <- binom.test(
  x = count(with_myalgia_data)$n,
  n = count(data)$n,
  conf.level = 0.95,
  p=0.05,
  alternative="greater"
)

# Printing the results
print(with_myalgia_prop_test)

# Question i

# Creating a contingency table
contingency_table <- table(data$Drug, data$Myalgia)

# Performing Fisher's exact test of independence
fisher_independence_test <- fisher.test(contingency_table, conf.level = 0.95)

# Printing the results
print(fisher_independence_test)

# Question j

# Creating a 95% Confidence Interval for the mean difference in Glucose levels with and without Myalgia symptoms
glucose_diff_ci <- t.test(
  with_myalgia_data$Glucose,
  without_myalgia_data$Glucose,
  var.equal=FALSE,
  conf.level = 0.95
)

# Printing the result
print("95% Confidence Interval for the mean difference in Glucose levels with and without Myalgia symptoms:")
print(glucose_diff_ci$conf.int)