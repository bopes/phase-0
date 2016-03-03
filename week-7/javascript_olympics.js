 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
// psuedocode
// define an array and have some sample elements of array of object. Each object will include a name property and event property
// Create a win property that takes in the athlete in the array and outputs a string saying they won
// win should be a function declaration

var michaelPhelps = {
  name: "Michael Phelps",
  event: "swimming",
}

var carlyLlyod = {
  name: "Carly Llyod",
  event: "soccer",
}

var athleteArray = [michaelPhelps, carlyLlyod];

function win(array){
  for(i = 0; i < athleteArray.length; i ++){
    console.log(array[i]["name"] + " wins at " + array[i]["event"] + "!");
  }
}

win(athleteArray)







// Jumble your words
// psuedocode
// create function that accepts string as argument
// funtion will output the string reversed

var string = "hello";

function jumble(inputString) {
  console.log(inputString.split("").reverse().join(""));
};

jumble(string);






// 2,4,6,8
// psuedocode
// input is an array of numbers
// output an array with only the even numbers remaining

var numberArray = [1,2,3,4,5,6,7,8,9,0];

function evenArray (inputArray) {
  function isEven (value) {
    return value % 2 === 0;
  };
  console.log(inputArray.filter(isEven));
};

evenArray(numberArray)






// "We built this city"
// psuedocode
// Create an object in constructor notation that includes name, sport, quote
// Test it works when called by driver code

function Athlete(name, age, sport,quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

// Driver code

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)






// Reflection
//
// What JavaScript knowledge did you solidify in this challenge?
//
// I solidified the difference between functions, properties and methods, as well as how to pass functions as criteria for other functions.
//
// What are constructor functions?
//
// Constructor functions are functions that create objects. They are like the object's template, so when you create a new instance of the object it passes the arguments into the properties and keeps the functions ready for all new instances.
//
// How are constructors different from Ruby classes (in your research)?
//
// Constructors are different from Ruby classes because they generate an object, with is more equivalent to a Ruby hash. Also, you don't need to define acessor methods to access the data they contain.