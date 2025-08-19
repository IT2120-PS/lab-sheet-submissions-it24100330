setwd("C:\\Users\\it24100330\\Desktop\\IT24100330")
branch_data <-read.table("Exercise.txt" , header=TRUE, sep = ",")
str(branch_data)
boxplot(branch_data$Sales, main = "Boxplot of Sales",ylab = "sales")


quantile(branch_data$Advertising_X2)
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)



find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  return(x[x < lower_bound | x > upper_bound])
}

find_outliers(branch_data$Years)