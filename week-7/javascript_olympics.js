 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up

// function win(athlete, event){
//   return athlete + " won the " + event
// }

// console.log(win("Michael Phelps", "Breast Stroke"))

// Jumble your words

// function reverseString(string){
//   array = string.split("");
//   array = array.reverse();
//   string = array.join("");
//   return string;
// }

// console.log(reverseString("!sdrow ruoy elbmuJ"))

// 2,4,6,8

// var array = [2,5,7,3,4,8,54,45,1112];
// var text = "";
// i = 0;
// counter = 0
// function even(array){
//   for (i = 0; i <= array.length; i++) {
//     if (array[i] %2 == 0);
//       text += array[i];
//   }
// }
// console.log(even(array))

// function even(array){
//   return value % 2 == 0;
// }
// var filtered = [2,5,7,3,4,8,54,45,1112].filter(even);

// // Define a callback function.
// function checkIfEven(value) {
//     while(numbers[value]) {
//         if (value % 2 == 0) {
//             return false;
//         }
//     }
//     return true;
// }

// // Create the original array.
// var numbers = [31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53];

// // Get the prime numbers that are in the original array.
// var evens = numbers.filter(checkIfEven);

// console.log(evens);

// document.write(evens);

// "We built this city"

var Athlete = function(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this. quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
  // I really solidified Object Oriented JavaScript. Before this challenge I was a bit shaky on what things were called, how certain things related to each other and so forth. However, after having the ability to see that literal notation and construction notation were essentially the JavaScript versions of Instance and Local Methods/Variables, it made it a lot easier to see where things fit in the scheme of things. Also recieving definitions for properties/methods in reation to variables/functions made those things a lot easier to understand as well.
// What are constructor functions?
  // Constructor functions are JavaScript's version of Instance Methods where it's a function that can be used/changed throughout the lifetime of the script. Also, this is the preferred notation if you need to do some initial work before the object is created.
// How are constructors different from Ruby classes (in your research)?
  // Constructors are pretty similar to Instance Methods and ruby classes. The way they can be used/changed throughout the lifetime of the script reminds me of instance variables. However, they're a lot like Ruby Classes because they also need a new instance to be called upon, much like a ruby class. Where they really differ is you can change the value of the properties (variables) outside the actual function.