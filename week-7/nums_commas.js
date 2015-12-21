
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

  // Function should accept an number as input
  // Function should output a string with a comma for every three lengths from the back of the integer.
    // Function should change number input to string
    // Function should change string to array
    // Function should reverse array
    // Function should iterate through the program
      // Iteration should subtract one from the counter everytime


// Initial Solution

// function separateComma(num) {
//   if (num > 999 && num <= 999999){
//     string = num.toString();
//     array = string.split("");
//     array = array.reverse();
//     array.splice( 3, 0, ",");
//     array = array.reverse();
//     array = array.join("");
//     return array;
//   }else if (num >999999){
//     string = num.toString();
//     array = string.split("");
//     array = array.reverse();
//     array.splice( 3, 0, ",");
//     array.splice( 7, 0, ",");
//     array = array.reverse();
//     array = array.join("");
//     return array;
//   }else
//     string = num.toString
//     return string
// }


// Refactored Solution

// function separateComma(num) {
//   if (num > 999 && num <= 999999){
//     string = num.toString();
//     array = string.split("");
//     array = array.reverse();
//     commaSpace = 3,
//     array.splice( commaSpace, 0, ",");
//     array = array.reverse();
//     array = array.join("");
//     return array;
//   }else if (num >999999){
//     string = num.toString();
//     array = string.split("");
//     array = array.reverse();
//     commaSpace = 3,
//     array.splice( commaSpace, 0, ",");
//     commaSpace += 4
//     array.splice( commaSpace, 0, ",");
//     array = array.reverse();
//     array = array.join("");
//     return array;
//   }else
//     string = num.toString
//     return string
// }

console.log(separateComma(612));

function separateComma(num) {
  string = num.toString();
  array = string.split("");
  array = array.reverse();
  commaSpace = 3
  if (string.length > 3 && string.length <=6){
    array.splice( commaSpace, 0, ",");
    array = array.reverse();
    array = array.join("");
    return array;
  }else if (string.length > 6){
    array.splice( commaSpace, 0, ",");
    commaSpace += 4
    array.splice( commaSpace, 0, ",");
    array = array.reverse();
    array = array.join("");
    return array;
  }else
  return num.toString();
};


// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  // It was fun doing this same problem in JavaScript. I approached it differently this time now that I have a bit more information in regards to what I can do with control flow.Thus I ended up with a much shorter refactored version than my original in Ruby.
// What did you learn about iterating over arrays in JavaScript?
  // Iterating over arrays in JavaScript is very similar to doing the same in Ruby, it is a bit harder to keep track of where and how many curly brackets I need though than it is with ends in Ruby.
// What was different about solving this problem in JavaScript?
  // In JavaScript the numbers have substantially fewer methods than in Ruby, or maybe I just have accessed a limited resource in regards to them.
// What built-in methods did you find to incorporate in your refactored solution?
  //.splice was a great method to help me insert an item into an array. I used something similar the first time I did this assignment in Ruby.