
//Sum Pseudocode:
//
// Define a function that takes an array of numbers as an argument.
// Set a variable total equal to 0.
// Add each integer in the array to the total.
// Once all numbers have been added return the total as the Sum.

function sum(num_array){
  var total = 0;
  for (counter = 0 ; counter < num_array.length ; counter++ ) {
    total = total + num_array[counter];
  }
  return total;
}


// ------------------------------------------------------------------------

// Mean Pseudocode:
//
// Define a function that takes an array of numbers as an argument.
// Set a variable total equal to 0.
// Add each integer in the array to the total.
// Divide the total by the number of numbers in the array.
// Return the results of the division as the Mean.

function mean(num_array){
  total = 0;
  for ( counter = 0 ; counter < num_array.length ; counter++ ) {
    total = total + num_array[counter];
  }
  return total/num_array.length;
}

// ------------------------------------------------------------------------

// Median Pseudocode:
//
// Define a function that takes an array of numbers as an argument.
// Sort the numbers by value (least to greatest or greatest to least).
  // IF the length of the number array is odd (not divisible by 2),
    // Find middle number in sorted array:
      // Divide array length by 2 and round up to next largest whole number (this will be the index of the Median number)
    // Return the number at that index as the median of array.
  // ELSE IF the length of the number array is even (divisible by 2),
    // Find the two middle numbers in sorted array:
      // Divide array length by 2.
      // Round division results down to get the index of first middle number and round up to get the index of second middle number.
    // Add the two middle numbers and divide that sum by 2.
    // Return the result of the division as the Median.


function median(num_array) {
  num_array.sort();
  if (num_array.length % 2 == 1) {
    medianIndex = Math.ceil(num_array.length/2);
    return num_array[medianIndex];
  } else if (num_array.length % 2 == 0) {
    medianIndex = (num_array.length/2);
    medianIndex1 = Math.floor(medianIndex);
    medianIndex2 = Math.ceil(medianIndex);
    return( (num_array[medianIndex1] + num_array[medianIndex2]) / 2 );
  }
}


// ------------------------------------------------------------------------