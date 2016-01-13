# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

# def super_fizzbuzz(array)

#   solution_array = []

#   (array.length).times do |element|
#     if array[element] % 3 == 0 && array[element] % 5 == 0
#       solution_array << "FizzBuzz"
#     elsif
#       array[element] % 3 == 0
#       solution_array << "Fizz"
#     elsif
#       array[element] % 5 == 0
#       solution_array << "Buzz"
#     else
#       solution_array << array[element]
#     end
#   end
#     array = solution_array
# end

# p super_fizzbuzz([15, 5, 3, 1])



# Refactored Solution

def super_fizzbuzz(array)

  solution_array = []

  (array.length).times do |element|
    if array[element] % 3 == 0 && array[element] % 5 == 0
      solution_array << "FizzBuzz"
    elsif
      array[element] % 3 == 0
      solution_array << "Fizz"
    elsif
      array[element] % 5 == 0
      solution_array << "Buzz"
    else
      solution_array << array[element]
    end
  end
    array = solution_array
end

p super_fizzbuzz([15, 5, 3, 1])


# Reflection

# What concepts did you review or learn in this challenge?
  # In this challenge I reviewed iterating through ruby arrays. Honestly, I thought this would take less time than it did; however, I initially ended up trying to code this in JavaScript. After I realized what I was doing wrong I went back and refreshed myself with both of the languages and carried through with the problem.
# What is still confusing to you about Ruby?
  # The only thing I'm confused by with Ruby currently is writing code that's similar in Ruby and JavaScript. Although once I point it out to myself that I'm working in the wrong language it's easy to fix my mistakes, it sure is hard realizing I'm working in the wrong language until I try to learn the code. I'll have to use more IRB in the future.
# What are you going to study to get more prepared for Phase 1?
  # I plan on studying iterating through hashes. Arrays were pretty easy for me, and my difficulty with hashes carried over into JavaScript Objects. However, I do understand objects well so hopefully this means I'll have less problems with hashes this time around.