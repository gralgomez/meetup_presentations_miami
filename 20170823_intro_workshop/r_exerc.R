setwd('/Users/laurita/Documents/GitHub/meetup_presentations_miami/20170823_intro_workshop/')
# source: http://rstatistics.net/
# author: Laura Gabrysiak
# R Exercises

# Part 1 - VARIABLES: CHARACTERS & INTEGERS 

# Create a new script: File -> New file -> R Script

# Now let’s create a variable! 
a <- 2

# Look at the Environment section to see variables you’ve made and their current values.
# Change the value of a, then look at the Environment section to see the updated value.

a <- 3 + 5

# c() creates a vector: a sequence of data points of the same type
b <- c(1,3,5,7,9)
b <- 1:12

# Now try this: what happens?
c <- c(4,3,'5',4)	

# Let’s explore. Try this:
c <- '5'

# Now try this:
c <- 5
a <- 'RStudio'		# quotation marks make character variables
a <- as.character(5)	# this is another way to make the character variable type

# Part 1.2 - VARIABLES: BOOLEAN DATA

# Boolean or logical variables only have true and false options. Computers see “true” as 1 and “false” as 0.

# Make this variable and then look at the Environment section to look at the variable type.
a <- TRUE			
a <- c(TRUE, FALSE, FALSE, TRUE)

# There are also questions you can ask R that will give boolean answers.
# Ask R whether a is a numeric (non-character) variable.

is.numeric(a)
## [1] FALSE

# a is a boolean variable, not a numeric variable

# Even though the computer sees true as 1 and false as 0, it can tell that you made a boolean variable because you typed TRUE and FALSE when you created it. 

# Now try these questions:
is.logical(a)
is.character(a)

# Part 2 - FUNCTIONS
# We have been using functions to ask R questions and to give it tasks. The functions we have used so far are:
c()
as.character(5)
is.numeric(a)
is.logical(a)
is.character(a)

# Functions have a function name (c, as.character, is.numeric etc). The function name is followed by curved brackets:()
# Functions always have these brackets, even if there’s nothing inside.

# The area inside the brackets can be used to give the function information
as.character(5)

# Here we are giving the function as.character() the information 5. 
# This means that it checks whether 5 is a character

# If we wanted to store the result that the function gives us, we can make the answer into a stored variable like this:
b <- as.character(5)

# What variable type would b be, and what would its value be? 

# Part 3 - DATA FRAMES: USED FOR GRAPHING AND STATISTICAL ANALYSES

# The data.frame() function makes data frames out of your data. The data frame structure is used in most applications of R.
# A data frame is like a table: it stores your data neatly

# Create three vectors: a, b, c.
# (Reminder: a vector is a sequence of data that has the same variable type)
a <- c(1,2,3,4,10,11,12)
b <- c(5,6,7,8,13,14,15)
# You can use ' or "
c <- c('yes','no','no','yes','no','yes','yes')

# Combine these vectors to make and store a data frame called myData (or call it something else if you want!)
myData <- data.frame(a,b,c)

# Now run this function:
head(myData,3)

# ACCESSING DATAFRAME ELEMENTS
# Data frames use the [ROW, COLUMN] access structure.

# To access the element in the 4th row, 2nd column of the data frame:
myData[4,2]

# To access a whole column of the data frame, use the operator '$'. This allows you to find information by name: let’s find all the values with column name a.
myData$a

# To access a whole ROW of the data frame, use the row number in the [row,column] format.
my.dataframe[1,]

# To access a whole COLUMN of the data frame, use the column number in the [row,column] format.
my.dataframe[,1]

# -----------------------------------------
# Exercises

# STEP 1: SET THE WORKING DIRECTORY
# - You can import data into R from lots of different file types
# - You can also import it from any location.

# Today we’re going to import data from a file you have on your computer. The file is called 'diamonds.csv', you should have downloaded it (if not, time to download now!)
# 1 - Find out where your diamonds.csv file is: probably in your Downloads folder.
# 2 - Check where Rstudio looks to find new data.
# 3 - “Working directory” is the name that Rstudio uses for the place its data is stored. 
# 4 - Enter this line:
getwd()

# This function asks Rstudio to tell you where the current working directory is. 
# This is probably not set to your Downloads folder at the moment.
# To set it to your Downloads folder, type:
setwd('~/Downloads')

# The '~' fills in all the other file location information automatically

# Now enter this line again to check that you’re in the same location as your diamonds.csv file:
getwd()

# STEP 2: IMPORTING DATA AND EXPLORING DATA
# Read data set using a function that loads csv files
diamonds <- read.csv('diamonds.csv')

# Dataset consists of the price and quality information for 54,000 diamonds

# To have a quick look at the first few rows of the dataset, type:
head(diamonds)

## X  carat      cut color clarity depth table price    x    y    z
## 1   0.23     Ideal     E     SI2  61.5    55   326 3.95 3.98 2.43
## 2   0.21   Premium     E     SI1  59.8    61   326 3.89 3.84 2.31
## 3   0.23      Good     E     VS1  56.9    65   327 4.05 4.07 2.31
## 4   0.29   Premium     I     VS2  62.4    58   334 4.20 4.23 2.63
## 5   0.31      Good     J     SI2  63.3    58   335 4.34 4.35 2.75
## 6   0.24 Very Good     J    VVS2  62.8    57   336 3.94 3.96 2.48   

# four parameters of diamond quality: carat, cut, colour and clarity; 
# five physical measurements, depth, table, x, y and z. 








