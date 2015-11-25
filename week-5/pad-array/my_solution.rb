# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?: I would like to input an array with two different required sets of values.
  #--The first value would be the numbers I will be return
  #--The second value would be the minnimum amount of spaces I would like to make available to place numbers.
  #-- There is an optional third value there to be represented as a string IF there are more minnimum spaces then there are integers in the array.
# What is the output? I would like to output
  #--If there are more spaces then there are numbers, then replace the empty spaces with the third value for as many times as there are extra numbers.
  #--If the minnimum amount of spaces is less than or equal to the length of the array, it should return the array.
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
end

def pad(array, min_size, value = nil) #non-destructive
  val_num = array.length.to_i - min_size.to_i
  if val_num >= 1
    return array.push(value)
  end
end

p pad([1,2,3],5, "apple")

# 3. Refactored Solution



# 4. Reflection