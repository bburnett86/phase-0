 // JavaScript Olympics

// I paired [with: Chris Wong] on this challenge.

// This challenge took me [2] hours.


// Warm Up
// Bulk Up
  // Pseudocode:
    //Input: An array of athletes
    //Output: String saying an athlete won an event.
    //Create a function: include name, event, and win properties
      //The win property prints out the outpur
// function win(athlete, event){
//   return athlete + " won the " + event;
// }

// console.log(win("Hussain Bolt", "100 Yard Dash"))

// Jumble your words
// Pseudocode:
// Input: A string
// Output: string reversed as a string
// Steps:
// Create a function that accepts a string
// split the string
// store the values inside an array variable
// take the array and reverse it
// store the reverse array in the original array variable
// join the values of the array and place it back into the string variable
// return the string variable

// function reverseString (string){
//   var ary = string.split("");
//    ary = ary.reverse();
//   ary = ary.join('');
//   return ary
// }

// console.log(reverseString("This is a String"));






// 2,4,6,8

//Pseudocode:
  //Input: An array of numbers
  //Output: An Array of ONLY even numbers
    //Create a function that determines if the number is even or not
    //That function must filter the array so only the even numbers remain.
      //Create an if statement stating if the number is divisible by 2 with no remainder it's even
      //Else that number is odd
      //Function must filter argument array

// function filter(array){
//   for (var counter=0; counter < array.length; counter++){
//     var element = array.indexOf(counter);
//     if (element % 2 == 0){
//       var even = element.push;
//     }else{
//       var odd = element.push;
//     }
//   return even
// }
// }

function test(number){
  if (number % 2 == 0)
   return true
    else
   return false
}

var ary = [1,2,3,4,5,6];
console.log(ary.filter(test))

// "We built this city"
//Pseudocode:
  //Input: Name, Age, Sport, Quote
  //Output: String
    // Create a constructor function that will make driver code workcode work
      //Create a function called athlete that accepts the inputs
      //Add properties that correspond to the inputs

function Athlete(name, age, sport, quote){
  this.name=name;
  this.age=age;
  this.sport=sport;
  this.quote=quote;
}

// driver code

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
  // I really solidified Object Oriented JavaScript. Before this challenge I was a bit shaky on what things were called, how certain things related to each other and so forth. However, after having the ability to see that literal notation and construction notation were essentially the JavaScript versions of Instance and Local Methods/Variables, it made it a lot easier to see where things fit in the scheme of things. Also recieving definitions for properties/methods in reation to variables/functions made those things a lot easier to understand as well. Also something I learned once I revisited this with a classmate is how simple things can be if you approach things from a different perspective. By myself I was determined to turn the third problem into a collaboration of a for loop and if control flow statement. When all we really had to do was filter, and it became a much simpler problem.
// What are constructor functions?
  // Constructor functions are JavaScript's version of Instance Methods where it's a function that can be used/changed throughout the lifetime of the script. Also, this is the preferred notation if you need to do some initial work before the object is created.
// How are constructors different from Ruby classes (in your research)?
  // Constructors are pretty similar to Instance Methods and ruby classes. The way they can be used/changed throughout the lifetime of the script reminds me of instance variables. However, they're a lot like Ruby Classes because they also need a new instance to be called upon, much like a ruby class. Where they really differ is you can change the value of the properties (variables) outside the actual function.