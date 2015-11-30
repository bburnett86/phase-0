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

# def pad!(array, min_size, value = nil) #destructive
#   additional_num = min_size - array.length
#   if additional_num > 0
#     while additional_num > 0 do
#       array << value
#       additional_num -= 1
#     end
#   else
#     array
#   end
#   array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   additional_num = min_size - array.length
#   new_array = array.dup
#   if additional_num > 0
#     while additional_num > 0 do
#       new_array << value
#       additional_num -= 1
#     end
#   else
#     new_array
#   end
#   new_array
# end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  additional_num = min_size - array.length
  while additional_num > 0 do
    array << value
    additional_num -= 1
  end
  array
end


def pad(array, min_size, value = nil) #non-destructive
  additional_num = min_size - array.length
  new_array = array.dup
  while additional_num > 0 do
    new_array << value
    additional_num -= 1
  end
  new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
#Yes, after I figured out what I eneded to do with the code, and got over my original idea. I was initially really determined to use if. After I realized that it could be a while loop... I still used if. I got rid of it refactoring though, and it actually took me a long time to complete because of that.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  #My initial difficulty using the if function is that once it pushed value into the array it pushed it as one long, continuous string. So although it worked well if there was only one more minnimum value than the array, it was useless for multiples. With the while loop taking it apart one by one and reseting it worked a lot better in regards to adding to the array.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  # As previously stated it worked with one extra pad but not multiple. However what took me the longest was trying to find a lot of different ways to make the if method work as opposed to reevaluating and trying something different.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
  # No when I refactored I really just took away the unneccesary code because it worked well and was pretty short.
# How readable is your solution? Did you and your pair choose descriptive variable names?
  # I believe the solution is pretty readable. I choose unique discriptive names for all of the things I controlled, and I was provided with good examples.
# What is the difference between destructive and non-destructive methods in your own words?
  # Destructive methods change the actual object_id of the array. It's a completely new item. With non destructive it will make another array with a different object_id but only the original will be saved unless you request otherwise. Meaning, it's quite literal, the distructive method destroys the original to make a new, the non-destructive maintains the orignal and creates another.