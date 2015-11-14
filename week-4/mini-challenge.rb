#Hours In A Year
#This should be hours in a day times the amount of days in a year
puts 24*365

#Minutes In A Decade
#This should be minutes in a hour times hours in a day. You take that number in two separate segments to add together. You multiply the the minutes*hours*365*7.5. And add that to minutes*hours*366*2.5. I broke it up that way to account for 2.5 leap years in a decade.
puts 7.5*60*24*365 + 2.5*60*24*366