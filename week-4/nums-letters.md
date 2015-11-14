How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby is pretty simple they have symbols associated with each of the math functions. (+) Addition. (-) Subtraction. (*) Multiplication. (/) Division. You'd write exactly what you're looking to find out and the console will act as a calculator.

What does puts do?

Puts will print out the answer to the console on a new line, but it will return nil. Meaning, if you need that answer for whatever reason later in the program it will not be available for you. If you would like to be able to print information to the console and have that information available to you later in the equation then you would use p instead of puts.

What is an Integer? What is a float? What's the difference?

An integer is any whole number. Literally, any whole number you can think of. I specify whole because a float is a whole number with number attatched after a decimal. So for example. 4 is an integer. 4.5 is a float. Floats of course can be really useful for things like percentages and other math related tasks. Also if you have no coding reference I always would just explain to someone that an integer is any number written without a decimal point, and a float would be a number written with one, even if it didn't need it. Also another large difference between float and integers is the way they interact with division. When you divide in Ruby with a regular integer, the number rounds down to the next whole number. This can be especially difficult in math programs if you need to be able to have a specific answer. With floats on the other hand when division happens it uses decimals to get as close to the actual answer as possible (some things go on forever, or close to. Think PI.).

What are Strings? Why and when would you use them?

Strings are essentially text, words, anything you would like your console to "say" to the user. A string would be useful if you'd like to interact with your user and ask questions, it's also good in terms of things like giving instructions. You would use them because, quite frankly, often times it's easier to communicate with words than numbers.

What are local variables? Why and when would you use them?

Local varibles are a word that begins with a lowercase or underscore that you set equal to a circumstance. Whether that circumstance be a number or an integer the local variable is usually something you put into your code to assist you with creating DRY code. It's useful because where ever you insert that local variable it will run the code it's assigned to. So for example if you wanted to continuously ask a series of questions that start with "why would you" you could assign that to the local variable question via

question = "Why would you"

And insert #{question} into every instance where you would want to ask "why would you". It's a time saver.

How was this challenge?

This challenge was good. It reassured me that I have a firm command on the basics of Ruby. One thing that did throw me off was where I had to insert the code for my rpsec to work. Less so because it was hard to find (it literally said answer goes below) but moreso because I was used to putting code in at the end. It was entirely a mistake I could have avoided by paying closer attention to detail.

Links
Mini-Challenges:
https://github.com/bburnett86/phase-0/blob/master/week-4/mini-challenge.rb

defining-varibles.rb:
https://github.com/bburnett86/phase-0/blob/master/week-4/defining-variables.rb

basic math.rb:
https://github.com/bburnett86/phase-0/blob/master/week-4/basic-math.rb

simple string.rb:
https://github.com/bburnett86/phase-0/blob/master/week-4/simple-string.rb