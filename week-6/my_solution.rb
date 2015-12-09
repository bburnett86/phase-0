# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: I would like to input an array of integers
# Output: From that array I would like the program to randomly choose one integer
# Steps:
  # When the game is initialized I need to identify and define roll and sides
  # Next I need to make the game aware that if labels = [] it should raise an ArgumentError.
  # Once a proper set of labels is passed through I'd like the program to choose a random one out of them.


# Initial Solution

# class Die
#   attr_reader :sides
#   def initialize(labels)
#     @labels = labels
#     if labels == []
#       raise ArgumentError.new ("No blank labels")
#     end
#     @sides = labels.length
#   end

#   def roll
#     @roll = @labels.sample
#   end
# end

# Refactored Solution

class Die
  attr_reader :sides
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new ("No blank labels")
    end
    @sides = labels.length
  end

  def roll
    @roll = @labels.sample
  end
end






# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  #The main difference between this die class and the previous one that I created was that as opposed to looking for the sides, we're given the number of sides the die will have via the length, and also, the sides, as opposed to being integers are strings. This changed a bit of the logic, albiet they were small changes. The sides just became the length of the label array, and the roll method instead of using rand, switched to .sample.
# What does this exercise teach you about making code that is easily changeable or modifiable?
  #This exercise teaches me that you generally want to get the simplest code possible so if you have to make any changes it's easy because the code is readable and if it's simple it's usually just a matter of adding things because you have the groundwork already.
# What new methods did you learn when working on this challenge, if any?
  #I learned about the .sample method. I honestly thought that rand would work, then I remembered that rand was still a range and you can't do a range on letter, so I looked for a method to randomize the array selection.
# What concepts about classes were you able to solidify in this challenge?
  #This helped me a lot in terms of getting from psuedocode to full class. It's really useful with classes because it's a bit newer to me so everything doesn't really translate as smoothly as say simple methods.