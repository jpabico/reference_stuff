/* Returns either the index of the location in the array,
  or -1 if the array did not contain the targetValue */

// pseudocode
// 1 - Let min = 0 and max = n-1.
// 2 - Compute guess as the average of max and min, rounded down (so that it is an integer).
// 3 - If array[guess] equals target, then stop. You found it! Return guess.
// 4 - If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
// 5 - Otherwise, the guess was too high. Set max = guess - 1.
// 6 - Go back to step 2.

var doSearch = function(array, targetValue) {
    var min = 0;
    var max = array.length - 1;
    var guess;
    var counter = 0;
    while(max >= min) {
        guess = Math.floor((min + max) / 2);
        // console.log(guess);
        counter++;
        if(array[guess]===targetValue) {
            console.log("number of guesses: " + counter);
            return guess;
        } else if(array[guess] < targetValue) {
            min = guess + 1;
        } else {
            max = guess - 1;
        }
    }
    return -1;
};

var primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

var result = doSearch(primes, 73);
console.log("Found prime at index " + result);
