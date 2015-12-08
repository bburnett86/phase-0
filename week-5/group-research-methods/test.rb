# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]



# # i_want_pets.each do |index|
# #   answer = []
# #   wrong = []
# #     index = index.to_s
# #     if index.include?("u") == false
# #       answer << index
# #       i_want_pets = answer
# #       i_want_pets = i_want_pets.join
# #       # i_want_pets = answer.uniq
# #     end
# #     p i_want_pets
# # end
# p i_want_pets.select{|index| index.to_s.include?("u") == false}

def add_two(nums)
  nums.map {|number| number + 2}
end

p add_two([1,3,56,12,28])