# This pad is reserved for a student in the Chorus Frogs cohort.
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define method name with the parameters of the item & quantity
  # string of times separated using by splitting the string
  # add items the hash
  # set default quantity = 1
  # print the list to the console using the each method to iterate over the hash
# output: hash with items and quantities

def create_a_list(name, quantity)
  #list = name.split(", ")
  list_items = {}
  #list.each do |name|
  list_items[name] = quantity
  #end
  p list_items
  return list_items
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add item name and quantity to the hash
# output: print the hash with the new item and quantity

def add_item(name, quantity, list)
  list[name] = quantity
  p list
  return list
end



# Method to remove an item from the list
# input:  item name
# steps:
  # check the hash for the key with the item name
  # remove the item name and quantity
# output: print the hash to check that the item was removed

def remove_item(name, list)
  list.delete(name)
  p list
  return list
end


# Method to update the quantity of an item
# input:  items with the new value for the quantity
# steps:
  # add the quantity to the item by
  # checking the hash for the item name
  # update the quantity
# output: print the hash to check if the item's quantity was updated

def update_quantity(name, quantity, list)
  list[name] += quantity
end




# Method to print a list and make it look pretty
# input: name of the hash
# steps:
  # iterate over the hash
  # for the item and quantity
  # separate each item and quantity on a new line with a colon
# output: print the hash to the console

def print_list(list)
  list.each do |name, quantity|
    puts "#{name} : #{quantity}"
  end
end

grocery_list = create_a_list("lemonade", 2)
print_list(grocery_list)
add_item("tomatoes", 3, grocery_list)
add_item("onion", 1, grocery_list)
add_item("ice cream", 4, grocery_list)
print_list(grocery_list)
remove_item("lemonade", grocery_list)
print_list(grocery_list)
update_quantity("ice cream", -3, grocery_list)
print_list(grocery_list)