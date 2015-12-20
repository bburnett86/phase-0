
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myString = "I wanna code right now!";
myString.concat(" Right-Right-Right Now!").toUpperCase();
console.log( myString )

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Triangle
for(var triangle= "#"; triangle.length <=7; triangle += "#")
  console.log(triangle)

//FizzBuzz
for (variable = 0; variable <= 100; variable++){
  if (variable % 3 == 0 && variable % 5 == 0) console.log("FizzBuzz");
  else if (variable % 3 == 0) console.log("Fizz");
  else if (variable % 5 == 0) console.log("Buzz");
  else console.log(variable);
}

// Functions

var guessNumber = Number(prompt("What's your favorite number?", ""));
alert("That's my favorite number too!!! When did you decide you like " + guessNumber + "?");

// Complete the `minimum` exercise.

function min(value1, value2){
  if (value1 > value2)return value2;
  else return value1;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Bret",
  age: 29,
  favoriteFoods: ["Pizza", "Waffles", "Rice"],
  quirk: "I'd rather Google than trust"
}