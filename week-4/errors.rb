# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# In the method
# 6. Why did the interpreter give you this error?
# Missing end at the conclusion of the method

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# errors.rb
# 2. What is the type of error message?
# (NameError)
# 3. What additional information does the interpreter provide about this type of error?
#: undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# The error in the code is in the local variable
# 5. Why did the interpreter give you this error?
# The local variable is not set equal to anything else.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#cartman()
# 5. Why did the interpreter give you this error?
# The cartman method is undefined

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# def cartmans_phrase
# 5. Why did the interpreter give you this error?
# Cartman's phrase doesn't need any input values and the code was attempting to put in a new phrase.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#  84
# 2. What is the type of error message?
# (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# cartman_says
# 5. Why did the interpreter give you this error?
# This method called for an argument and no argument was given



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
# 5. Why did the interpreter give you this error?
# The interpreter give us this error because there needs to be a lie and a name argument. The example that was provided to us only included a lie.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# (TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# 5 * "Respect my authoritay!"
# 5. Why did the interpreter give you this error?
# I recieved this error because "respect my authoritay" can't be multiplied by 5. The five would have to come after "respect my authoritay" for it to print that five times. Otherwise the interpreter's left trying to mutiply an integer by a string which is impossible.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
#  divided by 0
# 4. Where is the error in the code?
#amount_of_kfc_left = 20/0
# 5. Why did the interpreter give you this error?
# Nothing can be divided by zero. Well it can be, it's just your answer is undefined... So it's easier to just say no.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# (LoadError)
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file -- /Users/Candied_Island/Desktop/DBC/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# require_relative "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# Because we're attempting to load a file that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Which error was the most difficult to read?
# The most difficult to read error was hands down the second error, but that was only because the error message switched locations from the middle to the end of the error.

# How did you figure out what the issue with the error was?
# The issues with the errors were mostly simple. The console gave me most of the answers but otherwise the things that were missing were basics like arguments, names, etc.
# Were you able to determine why each error message happened based on the code?
# Yes, after going through and comparing my answers with what was created to guide us on the website all of the errors were pretty simple to read.
# When you encounter errors in your future code, what process will you follow to help you debug?
# I'll definitely follow the same process of identifying the file, line, then error. After you have those three things it's really a matter of figuring out how to fix your issue.