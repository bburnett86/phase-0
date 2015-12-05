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
  array.sort!

  final_value = nil
  final_number_of_occurances = 0

  current_value = nil
  current_number_of_occurances = 1
  (array.length -1).times do |index|
    if array[index] == array[index + 1]
      current_value = array[index]
      current_number_of_occurances += 1
    elsif current_number_of_occurances > final_number_of_occurances
      final_value = current_value
      final_number_of_occurances = current_number_of_occurances
      current_number_of_occurances = 1
    end
  end
  p " The final value #{final_value}
  array.each do |item|

  end

end
mode([13, 5, 35, 4, 5, 2, 17])


# 3. Refactored Solution




# 4. Reflection