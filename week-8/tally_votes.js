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

// Step 1 - Loop through votes object
//   A. For each element in votes object, iterate through the subobject
//   B. If voteCount's property doesn't have a particular subobject property, add that property to voteCount and set value = 1.
//   C. Else add 1 to the value of voteCount's property's subproperty

// Step 2 - Appoint someone to each office
//   A. For each property in officers, find the subproperty with max value for the corresponding property in voteCount
//   B. Set the property in officers equal to the property found in (A)

// __________________________________________
// Initial Solution

// for (var voter in votes){
//   for(var office in officers)  {
//     if (voteCount[office][votes[voter][office]] == undefined )
//       voteCount[office][votes[voter][office]] = 1;
//     else
//       voteCount[office][votes[voter][office]] += 1;
//   };
// };

// for (var office in officers){
//   officers[office] = findMax(voteCount[office]);
// };

// function findMax(givenObject) {
//   var max = 0;
//   var label = "";
//   for (var prop in givenObject) {
//     if (max < givenObject[prop]) {
//       max = givenObject[prop];
//       label = prop;
//     };
//   };
//   return label;
// };


// // console.log(voteCount);

// console.log(officers)
// console.log(findMax(vicePresident));
// __________________________________________
// Refactored Solution

for (var voter in votes) {
  for(var office in officers) {
    if (voteCount[office][votes[voter][office]] == undefined )
      voteCount[office][votes[voter][office]] = 1;
    else
      voteCount[office][votes[voter][office]] += 1;
  };
};

for (var office in officers){
  officers[office] = findMax(voteCount[office]);
};

function findMax(givenObject) {
  var max = 0, label = "";
  for (var prop in givenObject) {
    if (max < givenObject[prop]) {
      max = givenObject[prop];
      label = prop;
    };
  };
  return label;
};

console.log(officers)




// __________________________________________
// Reflection
//
// What did you learn about iterating over nested objects in JavaScript?
//
// Like Ruby you need to put iterators inside iterators, but than you need to nest your properties to get through multiple levels of iteration.
//
// Were you able to find useful methods to help you with this?
//
// We used for...in loops a lot, but we couldn't find any other outside methods. Fortunately we were able to make due with the basic loops.
//
// What concepts were solidified in the process of working through this challenge?
//
// The biggest were using bracket notation to call elements within objects. We were able to use loops to access elements from multiple different objects, just because they had related keys and values.



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
