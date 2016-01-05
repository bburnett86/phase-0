// Check if the user is ready to play!

// Must run in Google Chrome's JavaScript tester

confirm("I am ready to play!")

var age = prompt("Whats your age?")

if ( age < 13 ){
    console.log("This game isn't really made for you, but I'm not here to stop you.");
}
else{
    console.log("This game is pretty baller bro, you gotta try it at least once.");
}

console.log("You are at a Justin Bieber concert, and you hear this lyric 'Lace my shoes off, start racing.'");

console.log("Suddenly, Bieber stops and says, 'Who wants to race me?'");

var userAnswer = prompt("Do you want to race Bieber on stage?");

if ( userAnswer === "yes" ){
    console.log("You and Bieber start racing. It's neck and neck! You win by a shoelace!");
}
else{
    console.log("Oh no! Bieber shakes his head and sings 'I set a pace, so I can race without pacing.'");
}

var feedback = prompt("Please rate this game out of 10");

if (feedback > 8){
    console.log("Thank you! We should race at the next concert!");
}
else{
    console.log("I'll kep practicing coding and racing");
}
