
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

# array.each do |element|
#   if element.kind_of? (Array)
#     element.each {|inner| p inner}
#   end
# end

# array.each do |element|
#   if element.kind_of? (Array)
#     element.each {|inner| p inner}
#   elsif inner.kind_of?(Array)
#     inner.each {|further_inner| p further_inner[0]}
#   end
# end

# array.each do |element|
#   if element.kind_of? (Array)
#     element.each {|inner| p inner[2][0]}
#   end
# end



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# hash.each do |key,value|
#   if value.kind_of? (Hash)
#     hash.each {|key,value| p hash[:inner]["almost"][3]}
#   end
# end

# hash.each do |key,value|
#   if value.kind_of? (Hash)
#     hash.each {|key,value| p key[:inner]["almost"][3]}
#   end
# end

# hash.each do |key,value|
#   if value.kind_of? (Hash)
#     hash.each {|key,value| p value[:inner]["almost"][3]}
#   end
# end

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

# nested_data.each do |key,value|
#   if value.kind_of?(Array)
#     nested_data.each{|key,value| p value[1][hash:]}
#   end
# end

# nested_data.each do |key,value|
#   if value.kind_of?(Array)
#     nested_data.each{|key,value| p value[1][0]}
#   end
# end

# nested_data.each do |key,value|
#   if value.kind_of?(Array)
#     nested_data.each{|key,value| p value[1][:hash]}
#   end
# end


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |element|
#   if element.kind_of? (Array)
#     element.map! { |inner| inner + 5 }
#   elsif element.kind_of? (Integer)
#     element + 5
#   end
# end

# p number_array

# Bonus:

# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# What are some general rules you can apply to nested arrays?
  # When working with nested arrays, make sure that you are iterating through all of the arrays. Also, make sure that you write code that will iterate for the basic integers that aren't withen the nested arrays.
# What are some ways you can iterate over nested arrays?
  # If you'd like to iterate over nested arrays you can iterate through the original array and use kind_of? to decide whether or not you need to go deeper within an array. Also if it's a hash you can just make sure that you call all of the keys that come before the value you're interested in.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  # The medthods I used that I was least familiar with were kind_of? and map! The map was a great iterator; however, with map, each and pretty much every other thing that you do in ruby you need to keep in mind what type of object you're using it on. I've come to the point where I'm more or less used to using ruby docs to look up methods, and I'm becoming less surprised by what I get; however, I do find myself often times being tripped up trying to run methods on the wrong types of objects.