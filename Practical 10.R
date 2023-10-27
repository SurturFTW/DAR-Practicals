# Linear regression
# simple linear regression
# Step 1: Load the data into R
incomedata = read.csv("F:/Pushkar/MCA/Sem-1/DAR/income.data for linear regression.csv")
summary(incomedata)

# Step 2: Make sure your data meet the assumptions
# Normality
hist(incomedata$happiness)

# Linearity
plot(happiness ~ income, data = incomedata)

# Step 3: Perform the simple linear regression analysis
income.happiness.lm <- lm(happiness ~ income, data = incomedata)
summary(income.happiness.lm)

# Step 4: Visualize the results with a graph
library(ggplot2)
# scatter plot
income.graph<-ggplot(incomedata, aes(x=income, y=happiness))+ geom_point()
income.graph 

# Add the linear regression line to the plotted data
income.graph <- income.graph + geom_smooth(method="lm")
income.graph

# Add the equation for the regression line.
library(ggpubr)
income.graph <- income.graph +
  stat_regline_equation(label.x = 3, label.y = 7)
income.graph
