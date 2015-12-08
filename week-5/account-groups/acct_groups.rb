#Input: I would like to put in an array of names
#Output: I would like this program to split those names up into groups.

#First I must determine how to make the code run for as many team members there are in the team.
#Next I need to use each to iterate through the array.
  #Using the each iterator I need to determine how many people will go into each group, so I can know when to go on to the next array.

def team_builder(team)

  squad_1 = []
  squad_2 = []
  squad_3 = []
  squad_4 = []
  squad_5 = []

  program_length = team.length

  program_length.times do |member|
    team.each do |member|
      if squad_1.length <= 5
        squad_1 << member.to_s
      elsif squad_2.length <= 5
        squad_2 << member.to_s
      elsif squad_3.length <= 5
        squad_3 << member.to_s
      elsif squad_4.length <= 5
        squad_4 << member.to_s
      elsif squad_5.length <= 5
        squad_5 << member.to_s
      end
    end
  end
  p squad_1
  p squad_2
  p squad_3
  p squad_4
  p squad_5
end

team_builder(["Tevin", "John", "Acy", "Jean", "Timmy", "Bob", "Julie", "Sam", "Larry", "Sallie", "Tyrone", "Quan", "Jimbo", "Alice", "Alexis", "Bret", "Judy", "Quinton", "Keyanna", "Clifford"])

# What was the most interesting and most difficult part of this challenge?
  #The most interesting part of this challenge is like all the other I've come across in Ruby where sometimes the answer to the question is simply stepping away from the computer for a second. Initially when I did my control flow I was really focuesed on executing it using the while loop I didn't consider times do. Although, while would have been completely possible, times didn't freeze my computer.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
  #Yes everytime I execute pseudocode I have  little better idea of where I'm going with the program so I can better identify which methods, and so forth, to use to solve my problem.
# Was your approach for automating this task a good solution? What could have made it even better?
  #My initial approach as said previously would have worked fine, I could have used more patience with it to get there, but seeing as I accomplished the same thing, I'm not too disappointed. I would however like to see if there's a way to have ruby create and name new arrays/hashes automatically.
# What data structure did you decide to store the accountability groups in and why?
  # I chose to use arrays because there was no key/value combo I could think of as it was just a series of names. Although I supposed I could have pushed several names as values associated with one key, and have had them called that way as well.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  # This one taught me that there's a few limits to ruby that I'm sure really aren't addressed until we work more with AI. However, Ruby Docs and I are BFFs now.