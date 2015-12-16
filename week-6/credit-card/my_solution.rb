# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: Whether or not the number is a valid credit card number.
# Steps:
  # Class should only take credit card numbers that are exactly 16 digits, otherwise, raise argument error.
  # Separate all of the given values in the credit card to individual integers.
  # Starting from the last number, (or first really) make a seperate collection for every other number.
  # Multiply each number in the second (new collection we just separated) collection by two.
  # Take all of the new numbers in the second collection and once more break them down into single value integers.
  # After you have single value integers only in both of the collections, add the collections up.
  # If the value of the sum of all of the collections, modulus (%) 10 = 0, then it's a valid credit card number, otherwise, it's not useful.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
# attr_reader :card_num


  def initialize (card_num)
    @card_num = card_num
    @initial_array = []
    @double_array = []
    @solution_array = []
    if card_num.to_s.length > 16 || card_num.to_s.length < 16
      raise ArgumentError.new("#{@card_num} must be 16 digits")
    else
      @card_num = card_num.to_s.split(//)
      @card_num.each do |element|
        element = element.to_i
        @initial_array << element
      end
    end
  end

  def check_card
    @initial_array.each_with_index do |element, index|
      if index % 2 == 0
        element = 2 * element.to_i
        @double_array << element
      else
        @double_array << element
      end
    end
    @card_num = @double_array.join
    @card_num = @card_num.to_s.split(//)
    @double_array = @card_num
      @double_array.each do |element|
        element = element.to_i
        @solution_array << element
      end
    @solution_array.each do |num|
      @card_num = @solution_array.inject { |sum, num| sum + num }
    end
    if @card_num % 10 == 0
      true
    else
      false
    end
  end

end

card = CreditCard.new (4408041234567901)
card.check_card


# Refactored Solution








# Reflection

# What was the most difficult part of this challenge for you and your pair?
  # The most difficult part of this challenge for me was identifying the object type that I'm working on. I've been told that this is a common problem, but it's something that's particularly frustrating because if you don't keep track of your object type you cant keep track of what method to use on them because not all methods work on all objects.
# What new methods did you find to help you when you refactored?
  # Using .inject to add the sum of the things inside the array. This was actually pretty time consuming, not necessarily something I refactored, but I tried to do this several different ways before I found something that would help.
# What concepts or learnings were you able to solidify in this challenge?
  # This really helped me realize that I need to use driver code to check what I'm doing in the actaul command line. I have a havit of using control + B on sublime text which not only can lead to infinite loops freezing your computer, but also because sumblime text and command line run different versions of ruby, you also will end up with the entirely wrong answer when you check your rspec file in the command.