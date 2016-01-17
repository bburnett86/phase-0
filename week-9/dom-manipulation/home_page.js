
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: Dan ].


// Add your JavaScript calls to this page:

// Release 0:

//Done


// Release 1:

var release_1_div = document.getElementById('release-0');
release_1_div.className = "done";

// Release 2:

document.getElementById('release-1').style.display = "none";

// Release 3:

document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2";

// Release 4:

document.getElementById('release-3').style.backgroundColor = "#955251";

// Release 5:

// var x = document.getElementsByClassName('release-4'); //.style.fontSize = "2em";
// x[0].style.fontSize = "2em"

document.getElementsByClassName('release-4')[0].style.fontSize = "2em"

// Release 6:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content);
// .content.cloneNode(true)

// Reflection
// What did you learn about the DOM?
  // I learned that the Document Object Model was used to esentially organize different parts of our website so that we can edit them in ways that aren't CSS or HTML. Honestly, from what we've done with DOM, I'm still yet to see something that I couldn't do without it. Maybe it's one of those things where I'll appreciate it the more I use it, but for the time being most of the operations we executed in this assignment I could have done from either the HTML or CSS screens.
// What are some useful methods to use to manipulate the DOM?
  // Hands down the most useful method would have to be having the ability to hide and unhide obejcts via the append child method. I think once we get into control flow with DOM (supposing there is) that having parts of a webpage that can be unlocked seperately would be really cool.