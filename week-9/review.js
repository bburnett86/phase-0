//Pseudocode

// Input: Integer
// Output: Whether or not the number is a valid credit card number.
// Steps:
  // Class should only take credit card numbers that are exactly 16 digits, otherwise, raise argument error.
  // Separate all of the given values in the credit card to individual integers.
  // Starting from the last number, (or first really) make a seperate collection for every other number.
  // Multiply each number in the second (new collection we just separated) collection by two.
  // Take all of the new numbers in the second collection and once more break them down into single value integers.
  // After you have single value integers only in both of the collections, add the collections up.
  // If the value of the sum of all of the collections, modulus (%) 10 = 0, then it's a valid credit card number, otherwise, it's not useful.

function check(integer){
    if (integer != 16 throw "This is not a valid Credit Card number")
}

check(765789098)