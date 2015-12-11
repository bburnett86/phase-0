class NameData
  def name_method
    @name = "Bret"
  end
end

class Greetings
  def initialize
    @nameData = NameData.new
  end

  def hello
    puts "Hello #{@nameData.name_method}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello