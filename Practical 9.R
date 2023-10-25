# reference:- https://www.analyticsvidhya.com/blog/2021/10/end-to-end-introduction-to-marketbasket-analysis-in-r/
# Install the libaries
# install.packages('arules')

# Load the libraries
library(arules)

# Load the data set
data(Groceries)

# Get the rules
grocery_rules = apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8))
grocery_rules # shows that it is a set of 410 rules

# Show top 10 rules out of total 410 rules, 
# show only 2 decimal digits after the decimal
options(digits = 2)
inspect(grocery_rules[1:10])

# Sorting rules by confidence
grocery_rules = sort(grocery_rules, by = "confidence", decreasing = TRUE)
inspect(grocery_rules[1:10])

# What type of customers will buy whole milk? (whole milk is rhs)
whole_milk_rules = apriori(data = Groceries, 
                           parameter = list(supp = 0.001, conf = 0.08), 
                           appearance = list(default = "lhs", rhs = "whole milk")
                          )
inspect(whole_milk_rules[1:10])
whole_milk_rules = sort(whole_milk_rules, by = "confidence", decreasing = TRUE)
inspect(whole_milk_rules[1:10])

# If a customer buys "whole milk" then what else will they buy? (whole milk is lhs)
whole_milk_rules = apriori(data = Groceries, 
                           parameter = list(supp = 0.001, conf = 0.08, minlen = 2), 
                           appearance = list(default = "rhs", lhs = "whole milk")
                          )

inspect(whole_milk_rules[1:10])
whole_milk_rules = sort(whole_milk_rules, by = "confidence", decreasing = TRUE)
inspect(whole_milk_rules[1:10])
