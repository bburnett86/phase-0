
#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



# Reflection

# Release 1
  # What are these methods doing?
    #The methods are all working in conjunction to first set a name, age, and occupation, and then change it. The name, age, and occupation were set in the initialize method, then they all were given their own methods via the whats_is_ methods, and they were changed in their respective change_my_ methods.
  #How are they modifying or returning the value of instance variables?
    #They are modifying the value of the instance variables by setting the global variables equal to a new value. That "points" the variable to a new direction, which then becomes your new answer. They do this in the change_my_ methods.

# Release 2
  # What changed between the last release and this release?
    # The added an attr_reader :age to replace the what_is_age method.
  # What was replaced?
    #The what_is_age method was more or less made useless because something with simpler shorter code does the same function.
  # Is this code simpler than the last?
    #Yes, you can actually apply the same attr_reader method to the what_is_occupation and what_is_name as well... Which I'm pretty sure they'll do in the next few releases.

# Release 3
  # What changed between the last release and this release?
    # They added an attr_writer that applies to age as well.
  # What was replaced?
    # That replaced the change_my_age method.
  # Is this code simpler than the last?
    # This code is also simpler than the last code as it not only elemenates a method, but stops us from having to use a different variable for age in the @new_age. So it saves us some key work. What would save us even more key work is an attr_accessor :age to replace the attr_writer & attr_reader.

#Reflection
#What is a reader method?
  # A reader method allows you to return a state or value outside of the class, but it will not change it.
#What is a writer method?
  # A writer method allows you to change a state or value outside of a class but it will not return it.
#What do the attr methods do for you?
  # attr methods save us a lot of key work and time when writing code. So we don't have to write out a full method for everthing that's only functions are either or both returning or changing a value outside of the method.
#Should you always use an accessor to cover your bases? Why or why not?
  # Only if that value's only function is to change or return a value or state outside of a method. If that value for example includes a loop method then you wouldn't want to use the accessor because you'd still have to write out the method.
#What is confusing to you about these methods?
  # The most confusing thing about calling out methods was clling the methods across classes. Specifically when you have to use method.thisPart to call outside the class. It also made me realize not all initialize methods will be named initialize.