setwd("F:/Pushkar/MCA/Sem-1/DAR")
data <- read.csv("SalesData1.csv")
data
# Create a histogram
hist(data$toothpaste, main = "Histogram", xlab = "X-axis label", col = "blue", border = "black")
# Create a boxplot
boxplot(data$bathingsoap, main = "Boxplot", ylab = "Y-axis label", col = "green")
# Create a bar chart
barplot(table(data$total_units), main = "Bar Chart", xlab = "X-axis label", ylab = "Y-axis label", col = "purple")
# Create a line graph
plot(data$total_units, data$total_profit, type = "l", col = "red", main = "Line Graph", xlab = "X-axis 
label", ylab = "Y-axis label")
# Create a scatterplot
plot(data$total_units, data$total_profit, col = "orange", main = "Scatterplot", xlab = "X-axis label", 
     ylab = "Y-axis label")
# Create a pie chart
slices <- c(30, 10, 20, 15, 25)
lbls <- c("A", "B", "C", "D", "E")
pie(slices, labels = lbls, main = "Pie Chart")

