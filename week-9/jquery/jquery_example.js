// U3.W9:JQuery
// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
//link the image

//RELEASE 1:
//Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
//Add code here to select elements of the DOM

//RELEASE 3:
// Add code here to modify the css and html of DOM elements

bodyElement = $('body');
h1Element = $('body>h1');
divElement = $('div');
mascotElement = $('.mascot>h1');
imgElement = $('.mascot>img');

//RELEASE 4: Event Listener
// Add the code for the event listener here

$(h1Element).css({'color': 'green','border': '1px solid blue','visibility': 'visible'});
$(mascotElement).html('Rock Doves');

//RELEASE 5: Experiment on your own

$(imgElement).on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://naturemappingfoundation.org/natmap/photos/birds/rock_dove_4064np.jpg')
  $(this).animate({opacity: 0.25},2000)
});

$(imgElement).on('mouseleave', function(e){
  e.preventDefault()
  $(this).attr('src', 'dbc_logo.png')
  $(this).animate({opacity: 1},2000)
});

//RELEASE 6: ANIMATE

})


//REFLECTION

// What is jQuery?

// JQuery is code that allows you access to JavaScript functionality without writing JavaScript manually.

// What does jQuery do for you?

// It lets you manipulate the HTML and CSS dynamically using browser inputs.

// What did you learn about the DOM while working on this challenge?

// I learned that you can manipulate the contents while leaving the HTML unchanged. You also can set up links to other filetypes that aren't stylesheets.