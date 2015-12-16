def combo_generator
  combo = []
  @letters = ["b","i","n","g","o"]
  @numbers = rand(99) + 1
  @numbers = @numbers.to_s
  @letters.shuffle!
  combo = @letters[0] + @numbers
  p combo
end

combo_generator
