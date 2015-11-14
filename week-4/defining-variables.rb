#Solution Below
first_name = "Breton"
last_name = "Burnett"
age = 29



# RSpec Tests. They are included in this file because the local variables you are creating are not accessible across files. If we try to run these files as a separate file per normal operation, the local variable checks will return nil.


describe 'first_name' do
  it "is defined as a local variable" do
    expect(defined?(first_name)).to eq 'local-variable'
  end

  it "is a String" do
    expect(first_name).to be_a String
  end
end

describe 'last_name' do
  it "is defined as a local variable" do
    expect(defined?(last_name)).to eq 'local-variable'
  end

  it "be a String" do
    expect(last_name).to be_a String
  end
end

describe 'age' do
  it "is defined as a local variable" do
    expect(defined?(age)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(age).to be_a Fixnum
  end
end

#Address
# https://github.com/bburnett86/phase-0/blob/master/week-4/address/my_solution.rb

#Math
#https://github.com/bburnett86/phase-0/blob/master/week-4/math/my_solution.rb

#Reflection
# How do you define a local variable?
#You define a local variable by putting a word that starts lowercase or with an underscore and setting it equal to a value. That value that you're setting it equal to is what the computer will use in the future when the variable is called upon.
# How do you define a method?
#You define a method by putting def before the name and then giving the properties shortly after. This information that's put in as the property is what will show up when you call upon the method later.

# What is the difference between a local variable and a method?
#A method is what would hold your local variable. For example after you define your method you may include local variables within the method to help it work. It's kind of like the relationship between a videogame console and the actual game. The Method would be the console, the local variable would be what's inside the console (method) that makes it useful.

# How do you run a ruby program from the command line?
#ruby program-name.rb
# How do you run an RSpec file from the command line?
#rspec spec-file-spec.rb
# What was confusing about this material? What made sense?
#Mostly because I've had experience with Ruby before this material was a pretty good refresher course for me.