# Calculate a Grade

# I worked on this challenge [by myself].


# Your Solution Below

def get_grade(num)
  if num >= 90 && num < 100
    p "A"
  elsif num >= 80 && num <90
    p "B"
  elsif num >= 70 && num <80
    p "C"
  elsif num >= 60 && num<70
    p "D"
  else num >= 0 && num <60
    p "F"
  end
end
