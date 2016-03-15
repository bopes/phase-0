// Challenge: Create a function that accepts an integer as an argument and determines if it is a Fibonacci number

// Pseudocode

// 2. Create a method that accepts an integer as an argument
//   a. Createa a starter array with 0 and 1
//   b. Create a sum variable
//   c. Create a while loop that runs while sum is less than the argument
//    i.  With each loop, increase the sum by adding the last two array numbers together
//    ii. With each loop, add the sum into the starter array
//   d. Check if the sum is equal to the argument.
//    i.  If yes, return true
//    ii. If no, return false

function fibonacci(num) {
  var fib = [0,1];
  var sum = 0;
  while (sum < num) {
    sum = fib[fib.length-1]+fib[fib.length-2];
    fib.push(sum)
  }
  return sum == num
};

Reflection

What concepts did you solidify in working on this challenge?
What was the most difficult part of this challenge?
Did you solve the problem in a new way this time?
Was your pseudocode different from the Ruby version? What was the same and what was different?
