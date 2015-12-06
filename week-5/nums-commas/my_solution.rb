# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Random integer
# What is the output? (i.e. What should the code return?) that integer seperated by commas every 3 integers.
# What are the steps needed to solve the problem?
  #Program needs to be able to split number into an array.
  #After the number is split into n array, reverse the array then insert a comma every third spot. After you're finished, return the reversed version of that array, which should be the original, but with commas.


# 1. Initial Solution

# def separate_comma(random_num)

#   if random_num >= 0 && random_num < 1000
#     random_num
#   elsif random_num >= 1000 && random_num < 10000
#     random_num = (random_num.to_s).split(//,2)
#     random_num = random_num.join(",")
#   elsif random_num >= 10000 && random_num < 100000
#     random_num = (random_num.to_s).split(//)
#     random_num = random_num.insert(2,",")
#     random_num = random_num.join
#   elsif random_num >= 100000 && random_num < 1000000
#     random_num = (random_num.to_s).split(//)
#     random_num = random_num.insert(3,",")
#     random_num = random_num.join
#   elsif random_num >= 1000000 && random_num < 10000000
#     random_num = (random_num.to_s).split(//)
#     random_num = random_num.insert(4,",")
#      random_num = random_num.insert(1,",")
#     random_num = random_num.join
#   elsif random_num >= 10000000 && random_num < 100000000
#     random_num = (random_num.to_s).split(//)
#     random_num = random_num.insert(5,",")
#     random_num = random_num.insert(2,",")
#     random_num = random_num.join
#   end
#   random_num
# end

# 2. Refactored Solution

def separate_comma(random_num)

  if random_num >= 1000 && random_num < 10000
    random_num = (random_num.to_s).split(//,2)
    random_num = random_num.join(",")
  elsif random_num >= 10000 && random_num < 100000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(2,",")
    random_num = random_num.join
  elsif random_num >= 100000 && random_num < 1000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(3,",")
    random_num = random_num.join
  elsif random_num >= 1000000 && random_num < 10000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(4,",")
     random_num = random_num.insert(1,",")
    random_num = random_num.join
  elsif random_num >= 10000000 && random_num < 100000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(5,",")
    random_num = random_num.insert(2,",")
    random_num = random_num.join
  else random_num < 1000
    random_num
  end
  random_num
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
  # Initially I knew that I wanted to be able to take a string and break it down into each individual value. I figured that the best way to do that would be using the split(//) method which breaks it down into an array of individual elements for each integer. At which point I initially used code from ruby docs to figure out where to put the "," for 4 integers. It took researched in the insert method for me to be able to successfully finish the problem. The only issue I have is that when I run this code for numbers with 3 integers or less it does not produce a comma; however, the test running is telling me it does.
# Was your pseudocode effective in helping you build a successful initial solution?
  # The psuedocode was key. I do need to be more specific but once I have everything broken down into steps it gives me an excellent idea of how to attack the problem.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  #I could not find or execute rather the code I was looking for. I wanted to attempt to have the inserts set to where they would put into a split array of integers by the modulus of 4. Unfortunately when I attempted that with for and while loops it was unsuccessful.
# How did you initially iterate through the data structure?
# Initially I wanted to loop through using the times method for the size of the integer. Then I realized what I wanted to do could be done a lot easier with simple control flow and a few stock methods.
# Do you feel your refactored solution is more readable than your initial solution? Why?
# Just a little bit. I took out code that stated from 0-999 in the initial split because I figure it was just as effective just saying random_num < 1000 because the rspec only searched to 0.