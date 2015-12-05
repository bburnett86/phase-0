#Input: I would like to be able to input an array, and a string.
#Output: I would like the program to use the string to search through the array and determine which elements would stay.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]
def my_array_deletion_method(array, to_delete)
  array.each do {|string|}
    while string.include?(to_delete) == false do
      array << string
    end
  end
end

p
# my_array_deletion_method!(i_want_pets, "a")

