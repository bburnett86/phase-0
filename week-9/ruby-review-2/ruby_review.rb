# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Input: A words
# Output: Words in reverse but still seperated by the word.
  # First I need to turn the words into a type of object I can seperate
  # Then seperate the words by name
  # Seperate the words by each space
  # Reverse separated words
  # Join words by space
  # Return words as original form


# Initial Solution

# def reverse_words(string)
#   process_array = []
#   if string == ""
#     string
#   elsif string.include?(" ") == false
#     string.reverse
#   else
#     process_array = string.split(" ")
#     process_array.reverse!
#     string = process_array.join(" ")
#     string.reverse
#   end
# end



# Refactored Solution

def reverse_words(string)
  process_array = []
  if string == ""
    string
  elsif string.include?(" ") == false
    string.reverse
  else
    process_array = string.split(" ")
    process_array.reverse!
    string = process_array.join(" ")
    string.reverse
  end
end

# Reflection
# What concepts did you review in this challenge?
  # In this challenge I revisted creating a ruby method, working with control flow, and minipulating different types of objects. This was a nice review for me, it wasn't too hard, and was more of a confidence builder. I felt greate after this one.
# What is still confusing to you about Ruby?
  # Ruby is pretty easy to me, I've been taking additional time to work on hashes because sometimes when looping through them I access the wrong key or value in the pair.
# What are you going to study to get more prepared for Phase 1?
  # I'm going to study Ruby hashes to get more prepared to use them. I also feel this will make me more comfortable doing JavaScript Objects as well.