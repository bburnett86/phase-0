# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: I would like to input an integer for sides
# Output: With that integer I would like sides to roll the die to produce a random number ranging from that integer to zero.
# Steps:
  #Initialize the class Die so that it takes an argument of size. Define size. In size explain that it will only take an integer > 0. Then define roll and how it relates to producing a random number from size.


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if @sides < 1
#       raise ArgumentError.new("Only integers greater than 0 allowed")
#     end
#   end

# def sides
#     @sides
# end

#   def roll
#     @roll = 1 + rand(@sides)
#   end
# end



# 3. Refactored Solution

class Die

  attr_reader :sides

  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Only integers greater than 0 allowed")
    end
  end

  def roll
    @roll = 1 + rand(@sides)
  end
end

guess = Die.new (14)
p guess.roll

# 4. Reflection
# This project was one of the more practical. After I realized how the methods would work in conjunction to roll the die, it was a matter of figuring out first how to raise the argument error in the initialize method, and after which point figuring out to add one to rand (because it begins at zero) was the other challenging aspect of the challenge. Otherwise, I feel really well prepared to do classes.

# What is an ArgumentError and why would you use one?
  # An argument Error is something that is raised when an argument is put in that doesn't meet the standards of an argument that you'd want. For example if you wanted a program to run a method on a number, but you only wanted positive integers, than you would want to raise an ArgumentError if you recieved something that didn't fit that discription i.e. a negative float.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  # Raising the argument error was the only thing new I did in this exercise. It's a valuable skill, one I haven't used previously. I generally try to keep things as simple as possible when going over Ruby and I'll utitlize things I find on stack overflow but I prefer to use methods I'm comfortable with.
# What is a Ruby class?
  #A Ruby class is just anther way to organize Code. The Class encapsulates a series of methods which can run within that class. Another great thing about classes in ruby in inheritance which means that certain classes that are sub classes of another class can recieve some of their attributes. For example I'm a mammal, and bears are also mammals, we both have hair and live breathe oxygen. Although we're both mammals I'm not a bear and it's not a person, I don't hybernate, and the bear, well the bear can't do code (as well as I can).
# Why would you use a Ruby class?
  # You would use a Ruby class if you would like to have a program that utilized multiple methods. By having a class you can do so much more than you would be able to with just a method.
# What is the difference between a local variable and an instance variable?
  # Local variables are only useful locally, start with a lowercase letter or an underscore and have a value of nil at initialization. Instance variables are bound to the instance of a class and begin with an "@" symbol.
# Where can an instance variable be used?
  #Instance varibles are bound to the class which they are created in.