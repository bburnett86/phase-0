class Fullname
  attr_reader :first, :middle, :last

  def initialize (first, middle, last)
    @first = first
    @middle = middle
    @last = last
  end

end

class Greeter

  def greet(name)
    p "Hello #{attr:first} #{@middle} #{@last}. Nice to see you."
  end
end

person = Fullname.new("Eazus", "Fuckin", "Christ")
doorman = Greeter.new
doorman.greet(person)