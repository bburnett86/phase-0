// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// create a function that goes through votes objects
// stores the votes by position(ex president) in voteCount{}
// add 1 for every instance of candidate for those positions
// loop through to find most voted candidate
// select the highest counted candidate for every position


// __________________________________________
// Initial Solution


// function count(votes){
//   for (var voter in votes){
//     for (var office in votes[voter]){
//       var candidate = votes[voter][office];
//       if (voteCount[office][candidate]==undefined)
//        {voteCount[office][candidate]=0;}
//       voteCount[office][candidate]+=1;
//     }
//   }
// }
// count(votes)
// console.log(voteCount)

// function winner(voteCount){
//   for (var office in voteCount){
//     var mostVotes = 0;
//     for(var candidate in voteCount[office]){
//       if (voteCount[office][candidate] > mostVotes){
//         mostVotes = voteCount[office][candidate]
//         officers[office] = candidate
//       }
//     }
//   }
// }

// winner(voteCount)
// console.log(officers)


// __________________________________________
// Refactored Solution

for(var office in officers ){
  for(var voters in votes){
    if (voteCount[office].hasOwnProperty(votes[voters][office])) {
      voteCount[office][votes[voters][office]] += 1
    }
    else {
      voteCount[office][votes[voters][office]] = 1
    }
  }
}

for (var office in officers){
  var sortable = [];
  for (var voters in voteCount[office]){
    sortable.push([voters, voteCount[office][voters]])
  var winner = sortable.sort(function(a,b) {return b[1]-a[1]})
  }
  officers[office] = winner[0][0];
}

console.log(officers)
// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
  // Using the for...in statements definitely made things interesting. Iterating over the first values i.e. for (var voter in votes){, came easy to me, there were plenty of examples. This gives us access through the variable voter to iterate through the first level of the object within the variable votes. So for simplicity's sake let's stick with "Alex" the first example. The voter variable will allow us to iterate through all of the objects in the votes variable at the level of "Alex". Meaning if we'd like to iterate through "Alex" we'd only be able to use the name of the objects ("Alex") and their entire nested object as a whole ({ president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" }) which isn't much use. On the next level why we would do this makes a lot more sense. We take: for (var office in votes[voter]){, this is where that voter variable comes in handy. What we're doing in this example is we're giving the first property in the voter arrays (president, vice president, etc) a location where they can be used to iterate through. Which is great, but not perfect for our example as we need to also know the value of those properties to get the corresponding names for the positions they're running for. We do this by: var candidate = votes[voter][office] which allows us to iterate all the way through the candidates people voted for. Which allows us to do the next function to count the votes, but this part was probably the biggest learning experience and the longest part of our problem.
// Were you able to find useful methods to help you with this?
  //  the hasOwnProperty() method was useful when refactoring this code. It allowed us to basically leave out iterating all the way down to the deepest level and utilizing each individual object. The hasOwnProperty() Method allowed us to essentially compare the values on the first level of the officers variable and the first level of the votes variable. Essentially saying if the offices matched then create a new object for that name and tally up votes by one as they come in. Saved a lot of work actually.
// What concepts were solidified in the process of working through this challenge?
  // Iterating through nested objects definitely was solidified through this exercise. I wasn't quite sure how to even access certain things in nested arrays and nested objects before this week, but after explaining how everything works step by step, I have a much better understanding of what I'm doing for the next time I encounter a similar problem
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

