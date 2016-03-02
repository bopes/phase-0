// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: .

// Pseudocode
  // Take 1:
  // Step 1 - Create function that accepts integer as an argument
  // Step 2 - Convert integer into a string
  // Step 3 - Reverse new string
  // Step 4 - Take first three characters out of string, put into new string
  // Step 5 - Insert comma in new string
  // Step 6 - Repeat steps 4 & 5 until initial string is empty
  // Step 7 - Reverse new sting and output it

  // Take 2:
  // Step 1 - Create function that accepts integer as an argument
  // Step 2 - Convert integer into a string
  // Step 3 - Split the string into an array
  // Step 4 - Pop, or remove, each digit from the array into a new array.
  // Step 5 - Every 3 elements in the new array join a comma
  // Step 6 - Reverse everything in the array
  // Step 7 - Join all elements in new array

// Initial Solution
  // function separateComma(integer) {
  //   var initialString = integer.toString();
  //   var array = initialString.split("");
  //   var newArray = [];
  //   for ( var number = 0 ; array.length > 0 ; number++ ) {
  //     if ( number % 4 === 3 && number !== 0 ){
  //       newArray.push(",");
  //     } else {
  //       newArray[number] = array.pop();
  //     }
  //   };
  //   return newArray.reverse().join("");
  // };

  // console.log(separateComma(7000000000))

// Refactored Solution
  function separateComma(integer) {
    var array = integer.toString().split("");
    var outputArray = [];
    for ( var counter = 0 ; array.length > 0 ; counter++ ) {
      if ( counter % 4 === 3 ){
        outputArray.push(",");
      } else {
        outputArray[counter] = array.pop();
      }
    };
    return outputArray.reverse().join("");
  };

// Your Own Tests (OPTIONAL)

console.log(separateComma(7000000000))


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(1234) === "1,234"),
  "The value of separateComma(1234) should be 1,234.",
  "1. "
)

assert(
  (separateComma(123) === "123"),
  "The value of separateComma(123) should be 123.",
  "2. "
)

assert(
  (separateComma(1234567) === "1,234,567"),
  "The value of separateComma(1234567) should be 1,234,567.",
  "3. "
)

assert(
  (typeof separateComma(1234) == 'string'),
  "separateComma should return a string.",
  "4. "
)


// Reflection
//
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//
// Our initial approach was similar to Ruby, but there were some details to consider. Namely, the fact that JavaScript strings are immutable meant we couldn't manipulate the original number like we would have in Ruby, and the iteration was more granular because we didn't have access to the #each method.
//
//
// What did you learn about iterating over arrays in JavaScript?
//
// Iterating is much more granular and math oriented. Also, we realized that the 'while' condition in a for loop doesn't have to be determined by the counter, which made our solution much cleaner.
//
//
// What was different about solving this problem in JavaScript?
//
// Biggest differences were the immutable strings, looping syntax, and the lack of implicit returns.
//
//
// What built-in methods did you find to incorporate in your refactored solution?
//
// #toString - converts the argument to a string
// #push - put an element into an array
// #pop - remove the last element form an array
// #reverse - reverse an array's order
// #join - concatenate an array
// Our refactored solution isn't too different from the initial solution. We didn't have any success finding new methods relevant to what we were doing, so instead we condensed some of our code and renamed our variables to be more descriptive.