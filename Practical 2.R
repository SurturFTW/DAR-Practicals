# C BINDING USING R
# CBinding Vector to DataFrame using Cbind
data_1 <- data.frame(x1 = c(7, 3, 2, 9, 0), # Column1 of data frame 1
                     x2 = c(4, 4, 1, 1, 8), # Column2 of data frame 1
                     x3 = c(5, 3, 9, 2, 4)) # Column3 of data frame 1
y1 <- c(9, 8, 7, 6, 5)                      # Create vector
data_new1 <- cbind(data_1, y1)              # cbind vector to data frame
data_new1 

# CBinding 2 dataframes using Cbind
data_2 <- data.frame(z1 = c(1, 5, 9, 4, 0), # Column 1 of data frame 2
                     z2 = c(0, 9, 8, 1, 6)) # Column 2 of data frame 2
data_new2 <- cbind(data_1, data_2)          # cbind two data frames in R
data_new2

# R BINDING USING R
# RBINDING VECTOR TO DATA FRAME
x1 <- c(7, 4, 4, 9)                         # Column 1 of data frame 1
x2 <- c(5, 2, 8, 9)                         # Column 2 of data frame 1
x3 <- c(1, 2, 3, 4)                         # Column 3 of data frame 1
data_1 <- data.frame(x1, x2, x3)            # Create example data frame
vector_1 <- c(9, 8, 7)                      # Create example vector
rbind(data_1, vector_1)                     # rbind vector to data frame

# RBINDING 2 DATAFRAMES
x1 <- c(7, 1)                               # Column 1 of data frame 2
x2 <- c(4, 1)                               # Column 2 of data frame 2
x3 <- c(4, 3)                               # Column 3 of data frame 2
data_2 <- data.frame(x1, x2, x3)            # Create second data frame
rbind(data_1, data_2)                       # rbind two data frames in R

# Reading files using R ReadLines() 
con <- file("F:/Pushkar/MCA/Sem-1/DAR/readnew.txt", "r")
w <- readLines(con)
close(con)
w[2]
w[3]
w[4]

# Writing files using R WriteLines()
sample <- c("Class,Alcohol,Malic acid,Ash","1,14.23,1.71,2.43","1,13.2,1.78,2.14")
writeLines(sample,"F:/Pushkar/MCA/Sem-1/DAR/sample.csv")
a <- read.csv("F:/Pushkar/MCA/Sem-1/DAR/sample.csv")
a

# Function in R (Setwd, getwd, data, rm)
setwd("F:/Pushkar/MCA/Sem-1/DAR") 
getwd()
x <- runif(20)
summary(x)
hist(x)
list.files()                                # Lists all the files in working directory
# q()                                       # Quit R. You’ll get a prompt to save the workspace.
ls()

# R program to illustrate
# Attach function
# Create example data
txt <- data.frame(
    c1 = c(1, 2, 3, 4, 5),
    c2 = c(6, 7, 8, 9, 0),
    c3 = c(1, 2, 5, 4, 5))

# Try to print c1
c1
# Error: object 'c1' not found
# Attach data
attach(txt)
c1
detach(txt)
c1

# Reading data from console in R
# Taking user input readline()
val <- readline(prompt = "Enter the number: ")

# Printing type of variable
print(paste("Old datatype: ",typeof(val)))

# Converting into integer type
val <- as.integer(val)

# Printing the type of variable
print(paste("New datatype: ",typeof(val)))

# Printing the variable
print(val)

# Reading first input using scan()
cat("Enter the number of rows: ")
nrows <- scan(n = 1, what = integer())

cat("Enter the number of columns: ")
ncols <- scan(n = 1, what = integer())

# Read matrix elements
cat("Enter the matrix elements:\n")
elements <- scan(n = nrows * ncols)

# Step 3: Reshape into a matrix
matrix_data <- matrix(elements, nrow = nrows, ncol = ncols)

# Step 4: Display the matrix
print(matrix_data)
