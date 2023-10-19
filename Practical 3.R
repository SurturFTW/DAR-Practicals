# Create a sample data frame
data_frame <- data.frame(
  Name = c("John", "Sam", "Tom"),
  Marks = c(20, 25, 23),
  Points = c(80, 87, 73))

# Renaming the Single Variable
names(data_frame)[names(data_frame) == "Points"] <- "Ranks"
data_frame

# Rename multiple variables
data_frame <- data_frame %>%
rename(Score = Marks, rank = Points)
data_frame

#To change variable names without altering the data
names(data_frame) <- c("Name", "Marks Scored", "Rank Secured")
data_frame

# Using $ operator
data_frame$Gender <- c("M","M","M")
data_frame

# Using [ ] notation:
data_frame['Gender'] <- c("M","M","M")
data_frame

# Using cbind() Function:
Gender <- c ("M","M","M")
data_frame <- cbind(data_frame, Gender)
data_frame

# Add a New Column from the Existing:
data_frame$rank <- data_frame$Points - 2
data_frame

# Checking with not missing any data
data_frame <- data.frame(
  Name = c("John", "Sam", "Tom"),
  Marks = c(20, 25, 23),
  Points = c(80, 87, 73)
)
any(is.na(data_frame))

# Checking with missing data
data_frame <- data.frame(
  Name = c("John", "Sam", "Tom"),
  Marks = c(20, 25, 23),
  Points = c(80, 87, NA)
)
any(is.na(data_frame))

# Removing Row With missing Values
data_frame <- data.frame(
  Name = c("John", "Sam", "Tom"),
  Marks = c(20, 25, 23),
  Points = c(80, 87, NA),
  Favourite = c("Messi", "Ronaldo", "Messi")
)
data_frame <- na.omit(data_frame)
data_frame


# Fill missing values with a specific value
data_frame <- data.frame(
  Name = c("John", "Sam", "Tom"),
  Marks = c(20, 25, 23),
  Points = c(80, 87, NA),
)
# Fill missing values with a specific value
data_frame$Points[is.na(data_frame$Points)] <- 100
data_frame


#Converting Categorical to Dummy Variables (One-Hot Encoding):
data_frame <- data.frame(
  Name = c("John", "Sam", "Tom"),
  Marks = c(20, 25, 23),
  Points = c(80, 87, NA),
  Favourite = c("Messi", "Ronaldo", "Messi")
)
dummyData <- dummyVars(~ Favourite, data = data_frame)
data_frame <- data.frame(predict(dummyData, newdata = data_frame))
data_frame


# Converting Categorical to Numeric Using Factorization:
  data_frame <- data.frame(
    Name = c("John", "Sam", "Tom"),
    Marks = c(20, 25, 23),
    Points = c(80, 87, NA),
    Favourite = c(1, 2, 3)
  )
data_frame$Favourite <- as.numeric(factor(data_frame$Favourite))
data_frame


# Subsetting Rows Based on a Condition:
  data_frame <- data.frame(
    Name = c("John", "Sam", "Tom"),
    Marks = c(20, 25, 23),
    Points = c(80, 87, NA)
  )
# Define the condition and desired value
variable_condition <- "Name"  # Change this to your desired condition
desired_value <- "John"      # Change this to your desired value
# Subset the data frame based on the condition
subset_data <- data_frame[data_frame[, variable_condition] == desired_value, ]
subset_data


# Subsetting Columns:
  data_frame <- data.frame(
    Name = c("John", "Sam", "Tom"),
    Marks = c(20, 25, 23),
    Points = c(80, 87, NA)
  )
# Subset data_frame to include only "Age" and "Score"
subset_data <- data_frame[, c("Marks", "Points")]
subset_data


# Random Sampling:
  data_frame <- data.frame(
    Name = c("John", "Sam", "Tom"),
    Marks = c(20, 25, 23),
    Points = c(80, 87, NA)
  )
# Specify the desired sample size (e.g., 2 for a small sample)
sample_size <- 2
random_sample <- data_frame[sample(nrow(data_frame), sample_size), ]
random_sample


