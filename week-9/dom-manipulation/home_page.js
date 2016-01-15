
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


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