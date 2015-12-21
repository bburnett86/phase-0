 // Design Basic Game Solo Challenge

// This is a solo challenge

// Mission Description:
// Overall mission: defeat generated enemy
// Goals: defeat enemy before you run out of health
// Characters: Hero, Villian
// Objects:Hero(attack_strength, defense, health), Villian (attack_strength, defense, health)
// Functions:moveUp, moveDown, moveForward, moveBack

// Pseudocode
// Declare a 'Hero' object that will have properties of attack_strength, defense, and health.
// Declare a 'Villian' object and give it a random attack_strength, defense, & health.
// Add different methods to 'Hero' to make it attack or defend.
// Choose action for Hero, randomly generated action back from villian.
// Check health of Hero
// Check health of Villian
// If Villian health <= 0, success.
// If Hero health <= 0, game over.

// Initial Code

// var hero={
// attack: 5,
// defense: 2,
// hp: 15,
// opp: villian,
// success: false,

// fight: function(choice){
//   if(choice === 'attack'){
//     opp.hp = opp.hp - (this.attack - opp.defense);
//   }
//   else(choice === 'defend')
//     this.hp += 1;
// }
// //Display Villian hp
// console.log("The Villian's has " + villian.hp + " hit points left");

// //Display Hero hp
// console.log("You have " + hero.hp + " hit points left");

// //After every action sequense , check to see if the hero/villian/ or both have run out of hp.
// if(hero.hp <= 0 && villian.hp > 0){
// console.log("You lose, Game Over!");
// }

// else if(hero.hp >= 0 && villian.hp < 0){
//   theif.success = true;
//   console.log("You defeated our nemisis, you win!!");
// }

// else (hero.hp <= 0 && villian.hp <= 0 )
//   cosole.log("Sometimes, no one wins, draw.")
// }

// }

// };

// var villian = function(attack, hp, defense, opp){
//   this.attack = 6;
//   this.hp = 10;
//   this.defense = 1;
//   this.opp = hero;
// };

// var enemy = new villian()
// hero.choice('attack');
// hero.choice('defend');


// Refactored Code

// Mission Description:
// Overall mission: Get to the jewels without tripping an alarm or getting caught by security.
// Goals: Get to the jewels before security gets to you.
// Characters: Theif, Security
// Objects:theif(position,starting jewels), Security(position), alarm (position), jewels (position)
// Functions:moveLeft, moveRight, moveForward, moveBackward

// Pseudocode
// Declare a 'Theif' object that will have properties as position, jewels and success
// Add different methods to 'Theif' to make it move up, down, forward and backward
// Declare a 'Security' object and give it a random position
// Declare a 'alarm' object, and give it a random position that isn't equal to the position of the Jewels.
// Move the Theif, and also assign another random position to Security, keep alarm in place.
// Check where Theif is with respect to Security, jewels and alarms.
// Check where Security is with respect to alarms.
// If Theif is in the same position as the Jewels, success! If the theif position is same as Security, Game Over, if theif in same place as alarm, Game Over.

// Solution
var theif = {
latitude: 0,
longitude: 0,
jewels: 0,
success: false,

move: function(direction) {
  if(direction === 'right'){
    this.latitude +=10;
  }
  else if(direction === 'left'){
    theif.latitude -=10;
  }
  else if(direction === 'forward'){
    theif.longitude += 10;
  }
  else if(direction === 'backward'){
    theif.longitude -=10;
  }
//when theif moves, security moves too
  security.latitude = Math.floor((Math.random().toFixed(1)*100));
  security.longitude = Math.floor((Math.random().toFixed(1)*100));
  console.log("security's position is " + security.latitude + "," + security.longitude);

//Display where theif is
console.log("Your's position is " + theif.latitude + "," + theif.longitude);

//After every move, check if the theif is near the security or the jewels
if(theif.latitude === security.latitude && theif.longitude === security.longitude){
console.log("You encountered the security, Game Over!");
}

else if(theif.latitude === alarm.latitude && theif.longitude === alarm.longitude){
  console.log("You tripped the alarm, Game Over!")
}
else if(theif.latitude === jewels.latitude && theif.longitude === jewels.longitude){
  theif.success = true;
  theif.jewels = 100;
  console.log("You ran the jewels! you win!!");
}

}

};

var jewels = {
latitude: Math.floor((Math.random().toFixed(1)*100)),
longitude: Math.floor((Math.random().toFixed(1)*100))
};

var security = {
health: 100,
latitude: Math.floor((Math.random().toFixed(1)*100)),
longitude: Math.floor((Math.random().toFixed(1)*100))
};

var alarm = {
  latitude: Math.floor((Math.random().toFixed(1)*100)),
  longitude: Math.floor((Math.random().toFixed(1)*100))
}

theif.move('forward');
theif.move('right');
theif.move('left');

// Reflection
// What was the most difficult part of this challenge?
  // The most difficult part of this problem was grasping the idea of scope. With the way Ruby is set up wtih Classes scope is a lot easier to see, I had to read the object oriented JavaScript section first because scope was definitly the most wildly different thign from ruby to JavaScript.
// What did you learn about creating objects and functions that interact with one another?
  // I learned a lot about scope via trail and error. My initial attempt was to make a game where a character was created with stock attributes with villian created with set attributes as well. I realized I went wrong with this when I didn't start the game outside of that scope. To be able to create and access two different characters attributes to apply to one another I would have had to start at a further out scope if I wanted to use the same methods. I tried making it work for a few hours then settled for updating the gaming code I was provided with adding new parameters as well as updating the code so that the security, alarm, as well as theif location are all evenly divisible by 10 so they're more likely to end up on the same lines.
// How can you access and manipulate properties of objects?
  // After taking code apart and putting it back together for a while I realized accessing everything was all about scope and the type of object you're trying to use. The solution code I have available works because it's a simple scope, everything is happening in relation to the object Theif. Thus, as long as you set the other objects (alarm, security, jewels)in relation to the main object, in this case Theif (i.e. everything using the same location perameters) you should be able to run your program through your main object.