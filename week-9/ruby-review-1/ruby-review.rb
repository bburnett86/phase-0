# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Input: Anything (string, integer, etc)
# Output: runtime error unless assert passes the name variable.
# 1. Give the variable name a value.
# 2. Call the assert method with parameters we want to check.

# 3. Copy your selected challenge here

def separate_comma(random_num)

  if random_num >= 1000 && random_num < 10000
    random_num = (random_num.to_s).split(//,2)
    random_num = random_num.join(",")
  elsif random_num >= 10000 && random_num < 100000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(2,",")
    random_num = random_num.join
  elsif random_num >= 100000 && random_num < 1000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(3,",")
    random_num = random_num.join
  elsif random_num >= 1000000 && random_num < 10000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(4,",")
     random_num = random_num.insert(1,",")
    random_num = random_num.join
  elsif random_num >= 10000000 && random_num < 100000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(5,",")
    random_num = random_num.insert(2,",")
    random_num = random_num.join
  else random_num < 1000
    random_num
  end
  random_num
end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

test = separate_comma(1000)

assert {test == "1,000"}
assert {test == "1000"}

# 5. Reflection
# What concepts did you review in this challenge?
  # In this challenge we reviewed assert statement so that we can get a primary understanding of how assert statements work in relation to RSPEC. I feel like the objective here was to get us working with assert statements so we can create our own RSPEC files in the future.
# What is still confusing to you about Ruby?
  #  The only confusion I have regarding ruby is looping through hashes, which I'll do more via the extra activities on my own accord. I know that's something I need to be prepared to use.
# What are you going to study to get more prepared for Phase 1?
  #  To get more prepped for phase 1 I plan to study Ruby Hashes and touch up on JavaScript Objects, something about having multiple values to attend to confuses me. And I need to figure that out in order to make more complex problems.