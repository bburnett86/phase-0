# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of integers or strings
# What is the output? (i.e. What should the code return?) The code should return the string or integer that repeats the most from the given array.
# What are the steps needed to solve the problem?
  #The array needs to be SPLIT into EACH individual piece.
  #The program needs to COUNT each string or integer
  #IF there is one integer/string that has a COUNT higher than the rest RETURN/Print to the console that number
  #Elsif they're all equal print all of the numbers


# 1. Initial Solution
def mode(array)
  array.sort

  array.group_by {|item| item.uniq}
end
p mode([1, 2, 3, 4, 5, 5, 7])


# 3. Refactored Solution




# 4. Reflection