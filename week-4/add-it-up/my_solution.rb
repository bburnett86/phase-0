# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: I would like to be able to put in an array of integers
# Output: I would like the program to add the integers in the arrays and return the answer to the console.
# Steps to solve the problem.
# Define method. Identify way to not only join arrays but also add their integers.

# 1. total initial solution

def total(array)
  sum = 0
  array.inject(:+)
end



# 3. total refactored solution

def total(array)
  sum = 0
  array.inject(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: I would like to input string in an array
# Output: I would like the method to output the strings as a sentance.
# Steps to solve the problem.
#I need to identify a method that will combine the words, but wont make them one long word.

# 5. sentence_maker initial solution

def sentence_maker(array)
  array.join(" ")
  array(0,1).capitalize + array(1..-1) + "."
end

# 6. sentence_maker refactored solution

