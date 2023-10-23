# Install and load necessary packages
install.packages("ggplot2")
library(ggplot2)

data <- read.csv("F:/Pushkar/MCA/Sem-1/DAR/SalesData1.csv")
data

# Create a histogram
ggplot(data, aes(x = shampoo)) +
  geom_histogram(binwidth = 100, fill = "yellow", color = "black") +
  labs(title = "Histogram", x = "Month Number", y = "Y-axis label")

# Create a boxplot
ggplot(data, aes(x = 'Group' , y = facewash)) +
  geom_boxplot(fill = "green", color = "black") +
  labs(title = "Boxplot", x = "Group", y = "Facewash")

# Create a bar chart
ggplot(data, aes(x = shampoo)) +
  geom_bar(fill = "purple", color = "black") +
  labs(title = "Bar Chart", x = "X-Shampoo", y = "Y-axis label")

# Create a line graph
ggplot(data, aes(x = shampoo, y = facewash)) +
  geom_line(color = "red") +
  labs(title = "Line Graph", x = "Shampoo", y = "Facewash")

# Create a scatterplot
ggplot(data, aes(x = shampoo, y = facewash)) +
  geom_point(color = "orange") +
  labs(title = "Scatterplot", x = "Shampoo", y = "Facewash")

# Create a pie chart
pie(data$total_units, labels = data$labels, main = "Pie Chart")
