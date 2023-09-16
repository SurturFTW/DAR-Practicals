# Commands to install packages from source editor 
install.packages("openxlsx") 
install.packages("csvread") 
install.packages("XLS") 

# Data Acquisition examples 
# Loading packages "readxl" and "csvread' 
library(readxl) 

# Importing excel file to perform operations 
SalesData <- read_excel("F:/Pushkar/MCA/Sem-1/DAR/SalesData.xlsx") 
View(SalesData) 

library(csvread) 
# Importing .csv file to perform operations 
SalesData1 <- read.csv("F:/Pushkar/MCA/Sem-1/DAR/SalesData1.csv") 
SalesData1

# Performing arithmetic operations using R  
# Printing variables and objects
# Addition 
a <- 5 
b <- 10 
sum_result <- a + b 
print(sum_result)   

# Subtraction 
difference <- b - a 
print(difference)   

# Multiplication 
product <- a * b 
print(product)     

# Division 
quotient <- b / a 
print(quotient)   

# Exponentiation 
power <- a^2 
print(power)        

# Modulus (remainder) 
remainder <- b %% a 
print(remainder)   

# Data Types in R 
# Identifying data types using class() 
x <- 5.7     # Numeric(Double) 
class(x) 
y <- 10L     # The 'L' suffix indicates an integer 
class(y) 
name <- "Alice"     # Character 
class(name)

is_valid <- TRUE    #Logical(Boolean) 
class(is_valid) 
z <- 3 + 2i    # complex 
class(z) 
gender <- factor(c("Male", "Female", "Male", "Female"))    #Factor class(gender) 
today <- as.Date("2023-08-30")    #Date and Time 
class(today) 
nums <- c(1, 2, 3, 4, 5)    #Vector  
class(vector()) 
mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)    #Matrix 
class(mat) 
df <- data.frame(name = c("Alice", "Bob"), age = c(25, 30))    #Data Frame 
class(df) 
my_list <- list(name = "Alice", age = 25, is_student = TRUE)    #List 
class(my_list) 
