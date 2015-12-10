# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: I would like to build a program that will allow me to input an integer as a guess
# Output: I would like my program to return the symbols :low, if the answer is too low, :high if the answer is too high, and :correct if the answer is correct.
  # It should include an instance method named solved? which returns true if the guess was correct and false otherwise.
  # Also there needs to be two collections that begin empty named last_result and last_guess that save the most recent guess and result.
# Steps:


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     last_guess = nil
#     @last_result = nil
#     # @solved != true
#   end

#   def guess (hope)
#     if hope.to_i > @answer
#       :high
#       last_guess = hope
#       @last_result = :high
#       @solved = false
#     elsif hope.to_i < @answer
#       :low
#       last_guess = hope
#       @last_result = :low
#       @solved = false
#     else
#       :correct
#       last_guess = hope
#       @last_result = :correct
#       @solved = true
#     end
#     p last_guess
#     p @last_result
#   end

#   def solved?
#     if @last_result == :correct
#       @solved = true
#     else
#       @solved = false
#     end

#   end

# game = GuessingGame.new(10)
# p game.solved?
# game.guess(5)
# game.guess(20)
# p game.solved?

# game.guess(10)
# p game.solved?

# game.guess(5)
# p game.solved?


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    last_guess = nil
    @last_result = nil
  end

  def guess (hope)
    if hope.to_i > @answer
      :high
      last_guess = hope
      @last_result = :high
      @solved = false
    elsif hope.to_i < @answer
      :low
      last_guess = hope
      @last_result = :low
      @solved = false
    else
      :correct
      last_guess = hope
      @last_result = :correct
      @solved = true
    end
    p last_guess
    p @last_result
  end

  def solved?
    if @last_result == :correct
      @solved = true
    else
      @solved = false
    end
  end
end




# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  # Methods and instance variables represent the characteristics and behaviors of real world objects really closely. The methods could be thought of as the actions that an object is taking. For example my guess method was the object comparing two objects and returning an answer. Within that the instance variables are what connects the methods into one larger action. For example you need the @last_result in all three methods, and none of the methods would be possible if they couldn't communicate through the instance variable.
# When should you use instance variables? What do they do for you?
  # You should use instance variables if you have a variable that you want to use in multiple methods. Like you can use it on other variables, it doesn't really serve a purpose though unless it's being applied to multiple methods.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  # Flow control is useful if you would like to do things under certain conditions.
    # If you have set specific conditions I usually recommend using if/else. It allows you to simply tell the program to do this or else do this, you can also add in elsif if you have extra parameters.
    # If you have certain expiring parameters I would recommend using while. Using while allows you to run code up until a certain point. However, if there's no end point you'll probably get an infinite loop, so watch out.
    # You can also use the until loop if you would like to do something with an expiring parameter. Once more, without an end point this also becomes an infinite loop.
    # I started to go over all of them, and then I realized there's a lot and you don't want to read all of that. Either way control flow is useful if you would like to apply certain circumstances to your program. .each is very useful as well as it allows you to loop through all of the elements in an array or hash.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  # I'm not quite sure the benefits of using symbols in this code in relation to using strings. Maybe the objective was to make sure that everytime you get an answer you're getting the exact same answer regardless of the string, which would allow you to check it with the order_id as well. Otherwise symbols are really useful if you want something definite that can't be changed or you'll get a different value, and also if you'd like something with it's own unique value no matter how many times it's printed.