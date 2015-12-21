 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam ={
  name: "Adam",
};

var carson = {
  name: "Carson",
};

var carter = {
   name: "Carter",
};

var colton = {
  name: "Colton",
};

var children ={
  carson: carson,
  carter: carter,
  colton: colton,
};

var terah = {
  spouse: adam,
  weight: 125,
};

delete terah.eyeColor;
adam.spouse = terah;
terah.children = children;
adam.children = terah.children;

// __________________________________________
// Reflection: Use the reflection guidelines
// What tests did you have trouble passing? What did you do to make it pass? Why did that work?
  // I had the most trouble passing the test 8 because I originally did test 7 wrong. This happened because as opposed to reading through the instructions, I read through the driver code, which is not best practice. Once I went back and set everything proper it went through fine.
// How difficult was it to add and delete properties outside of the object itself?
  // Adding and deleting properties outside of the object wasn't really that difficult, I found myself having the most trouble with Object Literals and a bit with control flow as well. I wrote the children's name at the bottom of the code and it wouldn't process until it was above where it needed to be used.
// What did you learn about manipulating objects in this challenge?
  // JavaScript is just like Ruby in the sense that you need to make sure that you understand the object type of everything that you put in your array. Also, it's not that hard to change objects within an array if you know the proper method.

// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)