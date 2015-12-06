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

  final_value = []
  final_number_of_occurances = 0

  current_value = []
  current_number_of_occurances = 1

  (array.length).times do |index|
    if array[index] == array[index + 1]
      current_value << array[index]
      current_number_of_occurances += 1
    elsif current_number_of_occurances > final_number_of_occurances
      final_value = current_value
      final_number_of_occurances = current_number_of_occurances
      current_number_of_occurances = 1
    end
  end
  p final_value
end

mode([13, 5, 35, 4, 5, 2, 17])


# 3. Refactored Solution




# 4. Reflection
# This exercise took me while, and also made me realize I need to work on my loops. I worked on this Challenge with a former teacher and current mentor of mine who is a DBC alumn. In pairing with him on this challenge I learned that I really need to focus on writing quality loop methods, as well as properly memorizing how to call array indecies.

# Which data structure did you and your pair decide to implement and why?
  # We decided to utilize an array because we found I could use extra work on calling arrays indices
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  # I broke it donw into pseudo code by myself, however, I do keep getting a little better with the psuedo code, the more I do it the more I realize I need to break steps down into more details.
# What issues/successes did you run into when translating your pseudocode to code?
  # I never figured out independently how to have multiple solutions to the mode.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  #I used the .times method to iterate through the array the amount of times of the array. It was really helpful, in conjunction with the .length method.