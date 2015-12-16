# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #You want to create a method that will take the letters "b" "i" "n" "g" "o" and match them with a random number from 1-100.
# def call
#   combo = []
#   @letters = ["b","i","n","g","o"]
#   @numbers = rand(99) + 1
#   @numbers = @numbers.to_s
#   @letters.shuffle!
#   combo = @letters[0] + @numbers
# end

# Check the called column for the number called.
  #fill in the outline here
  # I need to create a method that will take the number called previously and compare it to the nested array. It must iterate through all of the nested arrays comparing the individual elements to the number/letter combination created when we called previously.
  #def check
  # @bingo_board.each do |element|
  #   if element.kind_of? (Array)
  #     element.each do |inner|
  #       if inner == @numbers.to_i
  #         @index_location = element.index(inner)
  #         @index_location = @index_location.to_i
  #         @array_location = @bingo_board.index(element)
  #         @array_location = @array_location.to_i
  #         @bingo_board[@array_location][@index_location] = "X"
  #         p "Looks like you got one, lets see how your board looks now!"
  #       end
  #     end
  #     end
  #   end
  #     p @bingo_board
  # end

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # if the number is in the column then I would like to save the index location to an array as well as the array location, and use those in conjunction with the array to call the location where the number matches the board and replace that number with an 'x'
# Display a column to the console
  #fill in the outline here
  # As long as the method to replace the element with an 'x' is destructive there shouldn't need to be anything other than displaying the board.

# Display the board to the console (prettily)
  #fill in the outline here
  # The "x" should be on the board, and everything should come back as nice and neat as before, except with an "x" subbed in for a number.
# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letters = ["b","i","n","g","o"]
#   end

#   def pick_ball
#   @combo = []
#   @numbers = rand(99) + 1
#   @numbers = @numbers.to_s
#   @numbers = @numbers
#   @letters.shuffle!
#   @combo = @letters[0].upcase + @numbers
#   p "Please check your boards for #{@combo} and if you have it, place an x on that one."
#   @bingo_board.each do |element|
#     if element.kind_of? (Array)
#       element.each do |inner|
#         if inner == @numbers.to_i
#           @index_location = element.index(inner)
#           @index_location = @index_location.to_i
#           p @index_location
#           @array_location = @bingo_board.index(element)
#           @array_location = @array_location.to_i
#           p @array_location
#           @bingo_board[@array_location][@index_location] = "X"
#           p "Looks like you got one, lets see how your board looks now!"
#         end
#       end
#       end
#     end
#       p @bingo_board
#   end
# end


# Refactored Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letters = ["b","i","n","g","o"]
#   end

#   def call
#     @combo = []
#     @numbers = rand(99) + 1
#     @numbers = @numbers.to_s
#     @numbers = @numbers
#     @letters.shuffle!
#     @combo = @letters[0].upcase + @numbers
#     p "Please check your boards for #{@combo} and if you have it, place an x on that one."
#   end

#   def check
#   @bingo_board.each do |element|
#     if element.kind_of? (Array)
#       element.each do |inner|
#         if inner == @numbers.to_i
#           @index_location = element.index(inner)
#           @index_location = @index_location.to_i
#           @array_location = @bingo_board.index(element)
#           @array_location = @array_location.to_i
#           @bingo_board[@array_location][@index_location] = "X"
#           p "Looks like you got one, lets see how your board looks now!"
#         end
#       end
#       end
#     end
#       p @bingo_board
#   end
# end

# EC Refactored

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["b","i","n","g","o"]
  end

  def call
    @combo = []
    # @numbers = rand(99) + 1
    # @numbers = @numbers.to_s
    # @numbers = @numbers
    @letters.shuffle!
    @letters = @letters
    if @letters[0] == "b"
      @numbers = rand(14) + 1
    elsif @letters[0] == "i"
      @numbers = rand(14) + 16
    elsif @letters[0] == "n"
      @numbers = rand(14) + 31
    elsif @letters[0] == "g"
      @numbers = rand (14) + 46
    else @letters[0] == "o"
      @numbers = rand(14) + 61
    end
    @combo = @letters[0].upcase + @numbers.to_s
    p "Please check your boards for #{@combo} and if you have it, place an x on that one."
  end

  def check
  @bingo_board.each do |element|
    if element.kind_of? (Array)
      element.each do |inner|
        if inner == @numbers.to_i
          @index_location = element.index(inner)
          @index_location = @index_location.to_i
          @array_location = @bingo_board.index(element)
          @array_location = @array_location.to_i
          @bingo_board[@array_location][@index_location] = "X"
          p "Looks like you got one, lets see how your board looks now!"
        end
      end
      end
    end
      p @bingo_board
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check



#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  #Pseudocoding was much easier in this challenge with an outline provided. Having the outline provided of what I needed to do more or less broken down into steps for me made this substantially easier because at that point the problem was executing the pseudocode several times to see which was most effective.
# What are the benefits of using a class for this challenge?
  # For starters, this would make one really long method, (although possible, look at my first draft, the class was actually originally only 2 methods) and also with all of the different variables that I used it's easier to keep track of everything in a class. If I was to try to make this one method it would be very confusing and not very DRY at all.
# How can you access coordinates in a nested array?
  # I accessed the coordinates in the nested array by calling them using the @bingo_board in conjuntion with two variables that were the array and index location of the item. At which point I took those variables and subbed them in after @bingo_board so that number is permanently replaced by "x" and no matter what the location of the number is it'll be easy to find it with an array.
# What methods did you use to access and modify the array?
  # I used kind_of?(Array) which allowed me to iterate further if the program tries to iterate through something to find out it's an array of arrays. It was really useful.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  # One new method I learned to use with ruby docs was the .maps! method. It works similar to an .each method where you iterate over a structure except the .maps is specifically there to permanently change the array that you're working in to your specifications (permanently ! <= because of that).
# How did you determine what should be an instance variable versus a local variable?
  #If I planned on using that variable outside of the method I made it an instance variable so that the qualities of the last time that instance variable was used will transfer into the next time I use that instance variable.
# What do you feel is most improved in your refactored solution?
  # When I refactored my solution I put in some control flow functions to allow the method to correctly call letter and numbers according to a real bingo board.