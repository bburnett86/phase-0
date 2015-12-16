# Your Names
# 1) Breton Burnett

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

  # def serving_size_calc
    # Defines method.
      # Tells us that the method serving_size_calculator will take two arguments.
        # Those arguments are item_to_make and num_of_ingredients.
        # Those two items will end up standing for which item you're making, it's corresponding number, in relation to how many items you have to make that item. For example, to make a cake, you need 5 ingredients, but say you want to make a cake, and you have six. We'll discuss how this is calculated later. Also, in defining the serving_size_calc we set the error_counter to 3.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

    #library.each do |food|
      # Is a looping method.
          # This method tells us that we're going to use each index in the array library, but we're going to identify each of those indexes as the variable food when we cycle through it.
  # library.each do |food|
    # if library[food] != library[item_to_make]

      # if library[food] does not equal library[item_to_make] then your error counter is subtracted by one. This is a very important part of the code as it proves later to be what notices the difference between things inside the library and things not included.

  #   if library[food] != library[item_to_make]
  #     error_counter += -1
  #   end
  # end

    #if error_counter > 0
      # If the error_counter > 0 this raises an argument stating that the item you're trying to calculate isn't a valid input.
        #The error counter is important because it only subtracts if you're trying to use somehting in the list. If it isn't something in the list, the error_counter never goes down thus it raises the ArgumentError.

  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

    # serving_size = library.values_at(item_to_make)[0]
      #   This is using nested arrays/hashes to state that the variable serving size is equal to the library value at the first value of the item_to_make. The item_to_make in this case being our cookie, pie, or cake, and the serving size being the amount of ingredients needed to create the item.

  # serving_size = library.values_at(item_to_make)[0]

    # remaining_ingredients = num_of_ingredients % serving_size
      #   This sets the variable remaining_ingredients equal to the num_of_ingredients module the serving size. Meaning the remaining ingredients is equal to the left overs of the number of ingredients divided by the serving size.

  # remaining_ingredients = num_of_ingredients % serving_size

    # case remaining_ingredients
      # This is our control flow function. It's stating what should return to the console once remaining_ingredients reaches 0 (or doesn't). The internal calculations return the num_of_ingredients divided by the serving_size (which returns how many of that item you can make with the ingredients provided) of the item you're trying to make

  # case remaining_ingredients
  # when 0
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  # else
      #if there is left overs, meaning the remaining ingredients > 0, the code tells you how many remaining ingredients you have, and I'll make the code for the new bakin items it'll suggest after.
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# Drive Code

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#Refactored

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  library.each do |food|
    if library[food] == library[item_to_make]
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
  end


  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size
  leftovers_to_cook = remaining_ingredients
  cakes_via_leftovers = nil
  cookies_via_leftovers = nil

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  elsif remaining_ingredients >= 5
    cakes_via_leftovers = leftovers_to_cook / 5
    leftovers_to_cook = remaining_ingredients % 5
    cookies_via_leftovers = leftovers_to_cook
  else remaining_ingredients < 5 && remaining_ingredients >= 1
    cookies_via_leftovers = leftovers_to_cook
  end

  if cakes_via_leftovers == nil
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: you can still make #{cookies_via_leftovers} cookie(s)!"
  elsif cookies_via_leftovers == nil && cakes_via_leftovers != nil
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: you can still make #{cakes_via_leftovers} cake!"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: you can still make #{cakes_via_leftovers} cake and #{cookies_via_leftovers} cookie(s)!"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
  # A lot of times when you have an initial solution you've done a lot of unnessessary things. Thus when you refactor the code if you analyze everything it does, it makes things really easy when it comes to inserting the code like the psuedocode says. Also analyzying it allows you to know if there are any steps that aren't necessary.
# Did you learn any new methods? What did you learn about them?
  # I didn't learn any new methods in this one, it was pretty clean cut what you could do in order to execute it. I'm pretty sure I used mostly methods I learned when I first started ruby.
# What did you learn about accessing data in hashes?
  #Accessing data in hashes and arrays I've learned is made a lot easier if you keep count of not only where your variable for the hash in pointing (which determines it's content), but also making sure you have an idea of which methods effect the hashes vs arrays, strings, etc.
# What concepts were solidified when working through this challenge?
  # While working through this challenge it really gave me more confidence in my ability to debug/refactor someone elses code. It's a really valuable skill to have as most of the time you'll be working on code that's already established.