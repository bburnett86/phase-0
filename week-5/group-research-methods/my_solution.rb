# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 4
def my_array_deletion_method!(source, thing_to_delete)

  source.select!{|index| index.to_s.include?(thing_to_delete.to_s) == false}

end

def my_hash_deletion_method!(source, thing_to_delete)

  source.delete_if {|key, value| key == thing_to_delete}

end

# Identify and describe the Ruby method(s) you implemented.
# I utilized the select! method to create a destructive array deletion method. The select method selects the items that apply to the key or value you're evaluating. Thus it effectively keeps what you want and the bang makes it so that it stays within that array and doesn't make a new order_id.
#
# I utilized the delete_if on the hash deletion method because it works in the inverse way of select!, in it identifies things and deletes them from the hash depending on how they meet the criteria in regards to the key or value. So essentially what you're doing with delete_if is what it says, delete if it applies.