// var villian = function(attack, hp, defense, opp){
//   this.attack = 6;
//   this.hp = 10;
//   this.defense = 1;
// };

// var enemy = new villian()
// // console.log(enemy.constructor === villian)
// console.log(enemy.attack + " " + enemy.hp + " " + enemy.defense)


// Mission Description:
// Overall mission: defeat randomly generated enemy
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

// Solution
// var villian = new enemy()
// var hero = new player()

//   fight: function(choice){
//     if(choice === 'attack'){
//       opp.hp = opp.hp - (this.attack - opp.defense);
//     }
//     else(choice === 'defend')
//       this.hp += 1;
//   }
//   //Display Villian hp
//   console.log("The Villian's has " + villian.hp + " hit points left");

//   //Display Hero hp
//   console.log("You have " + hero.hp + " hit points left");

//   //After every action sequense , check to see if the hero/villian/ or both have run out of hp.
//   if(hero.hp <= 0 && villian.hp > 0){
//   console.log("You lose, Game Over!");
//   }

//   else if(hero.hp >= 0 && villian.hp < 0){
//     theif.success = true;
//     console.log("You defeated our nemisis, you win!!");
//   }

//   else (hero.hp <= 0 && villian.hp <= 0 )
//     cosole.log("Sometimes, no one wins, draw.")
//   }

//   }

//   };
//   var hero= function(attack, hp,defense, opp){
//     this.attack: 5,
//     this.hp: 15,
//     this.defense: 2,
//     this.opp: villian,
//     this.success: false,
//   };
//   var villian = function(attack, hp, defense, opp){
//     this.attack = 6;
//     this.hp = 10;
//     this.defense = 1;
//     this.opp = hero;
//   };
// }

// var enemy = new villian()
// var hero = new hero
// hero.choice('attack');
// hero.choice('defend');

function forEach(array, action) {
  for (var i = 0; i < array.length; i++)
    action(array[i]);
}

forEach(["Wampeter", "Foma", "Granfalloon"], console.log);