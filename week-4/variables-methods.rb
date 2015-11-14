puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "Whats your last name?"
last_name = gets.chomp

puts "Just so I'm sure, your name is #{first_name} #{middle_name} #{last_name}?"
puts "Great, nice to meet you #{first_name} #{middle_name} #{last_name}"

puts "What's your favorite number?"
num = gets.chomp.to_i
new_num = num + 1
puts "I think #{new_num} is bigger, and therefore better!"