# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!

grants <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at the loaded data

View(grants)
# Create a variable `organization` that contains the `organization` column of 
# the dataset

organization <- grants[ , "organization"]
print(organization)

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!

is.vector(organization)
class(organization)

## Now you can ask some interesting questions about the dataset


# What was the mean grant value?

average <- mean(grants[ , "total_amount"])
print(average)


# What was the dollar amount of the largest grant?

max_amount <- max(grants[ , "total_amount"])
print(max_amount)

# What was the dollar amount of the smallest grant?

small_amount <- min(grants[ , "total_amount"])
print(small_amount)

# Which organization received the largest grant?

org_largest_grant <- grants[grants$total_amount == max_amount, "organization" ]
print(org_largest_grant)

# Which organization received the smallest grant?

org_smallest_grant <- grants[grants$total_amount == small_amount, c("organization", "total_amount")]
print(org_smallest_grant)

# How many grants were awarded in 2010?

grants_in_2010 <- grants[grants$start_year == "2010", "organization"]
print(grants_in_2010)

