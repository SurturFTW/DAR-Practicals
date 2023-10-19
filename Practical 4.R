# Load required libraries
library(dplyr)

# Load the mtcars dataset
data(mtcars)

# View the first few rows of the dataset
head(mtcars)

# Select specific columns
selected_columns <- mtcars %>%
  select(mpg, hp, wt)

# Filter rows based on conditions
filtered_data <- mtcars %>%
  filter(cyl == 6, gear == 4)

# Arrange rows based on a variable
arranged_data <- mtcars %>%
  arrange(desc(mpg))
# Group the data by a variable and summarize it
grouped_and_summarized <- mtcars %>%
  group_by(cyl) %>%
  summarize(mean_mpg = mean(mpg), mean_hp = mean(hp))

# Create new variables using transmute
transmuted_data <- mtcars %>%
  transmute(mpg_per_hp = mpg / hp, wt_miles_per_gallon = wt / mpg)

# View the resulting datasets
head(selected_columns)
head(filtered_data)
head(arranged_data)
grouped_and_summarized
head(transmuted_data)
