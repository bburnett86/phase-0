# Factorial

# I worked on this challenge [by myself].


# Your Solution Below
def factorial(number)
  # Your code goes here
  (1..number).inject(:*) || 1
end

p factorial(5)