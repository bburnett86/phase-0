// Pseudocode
// Input: I would to be able to input an array, it's minnimum size, and a pad word.
// Output: I would like to recieve my array back with the extra pad words added in for as many times as the minnimum size is greater than the array length.
  //Create a function that will accept three arguments
    //The array, the min_size and the value
  // Create a variable to stand in for the in size - array length and use that as the conditional for a while loop.
  // Push a value into the array everytime you loop through until the variable is 0

//Initial Solution
// function pad (array, min_size, value){
//   var additional_num = min_size - array.length;
//   while(additional_num > 0){
//     array.push(value)
//     additional_num--;
//   }
//   console.log(array)
// }

// pad([1,2,3], 6, "pad")

// Refactored Code

function pad (array, min_size, value){
  var additional_num = min_size - array.length;
  for (var i = 0; i < additional_num; i++){
    array.push(value)
  }
  return array
}

console.log(pad([1,2,3], 6, "pad"))

// Reflection
// What concepts did you solidify in working on this challenge?
  // I solidified working with JavaScript functions in this challenge. It was fun turning a method into a function, it wasn't much work either, they're for the most part the same.
// What was the most difficult part of this challenge?
  // The most difficult part of the challenge for me was remembering to include return before array if I wanted to be able to console.log(pad()) and have it return anything other than undefined. Normally in ruby I could just drop the array down there, not so much in JavaScript. I was really upset I couldn't figure out why it wouldn't return the array, then the word return rung a bell. And boom, it worked.
// Did you solve the problem in a new way this time?
  // Yes, the second time around because it's JavaScript I used a for function with my variable to tell how many times we'll pad as the conditional. That allowed me to make the code a bit more tidy when I refactored.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
  // The Psuedocode was different, mostly because I've gotten better at Pseudocoding. At first when I first doing pad array I was still new to Psuedocode and using proper names for objects and things of that nature in my psuedocode which I later found out could sometimes lead me astray if my initial solution wasn't correct. I'm actually much more satisfied with my pseudocoding now, but I understand it's still definitely a work in progress.