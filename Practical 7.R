install.packages("ggplot2")
install.packages("corrplot")
install.packages("GGally")
library(GGally)
library(ggplot2)
library(corrplot)
data <- read.csv("F:/Pushkar/MCA/Sem-1/DAR/SalesData1.csv")
data
# Explore the structure and summary statistics
str(data)
summary(data)
# Calculate the correlation matrix
correlation_matrix <- cor(data, method = "pearson")
correlation_matrix

# Create a correlation plot using corrplot
corrplot(correlation_matrix, method = "color")

# Create a scatterplot matrix using ggplot2
ggpairs(data, title = "Scatterplot Matrix")

# Create boxplots or violin plots for numeric variables
ggplot(data, aes(x = "Group", y = facewash)) +
  geom_boxplot(fill = "blue") +
  labs(title = "Boxplot or Violin Plot", x = "Categorical Variable", y = "Numeric Variable")

# Create histograms
ggplot(data, aes(x = facewash)) +
  geom_histogram(binwidth = 40, fill = "blue") +
  labs(title = "Histogram", x = "Numeric Variable")

# Create a heatmap using ggplot2
ggplot(data, aes(x = total_units, y = bathingsoap)) +
  geom_tile(aes(fill = total_profit)) +
  labs(title = "Heatmap", x = "Categorical Variable 1", y = "Categorical Variable 2", fill = 
         "Numeric Variable")
