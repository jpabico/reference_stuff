// example 1

// keyword 'this' is not defined
var checkNumericRange = function(value) {
  if (typeof value !== 'number') {
    return false;
  } else {
    return value >= this.minimum && value <= this.maximum;
  }
}

// 'range' has the 'minimum' and 'maximum' properties required of 'this'
var range = {minimum: 5, maximum: 15};

// set 'this' equal to 'range'
// checkNumericRange requires an argument (12)
console.log(checkNumericRange.bind(range)(12));   // true


// example 2

//minimum and maximum define originally
var originalObject = {
    minimum: 50,
    maximum: 100,
    checkNumericRange: function (value) {
        if (typeof value !== 'number')
            return false;
        else
            return value >= this.minimum && value <= this.maximum;
    }
}

// Check whether 10 is in the numeric range.
console.log(originalObject.checkNumericRange(10));   // false

// redefine 'this' using object 'range'
var range = { minimum: 10, maximum: 20 };

// 'this' will now refer to 'range'
console.log(originalObject.checkNumericRange.bind(range)(10));   // true

// example 3

// The following code shows how to use the arg1[,arg2[,argN]]] arguments. The bound function uses the parameters specified in the bind method as the first and second parameters. Any parameters specified when the bound function is called are used as the third, fourth (and so on) parameters.

// Define the original function with four parameters.
var displayArgs = function (val1, val2, val3, val4) {
    document.write(val1 + " " + val2 + " " + val3 + " " + val4);
}

var emptyObject = {};

// Create a new function that uses the 12 and "a" parameters
// as the first and second parameters.
var displayArgs2 = displayArgs.bind(emptyObject, 12, "a");

// Call the new function. The "b" and "c" parameters are used
// as the third and fourth parameters.
displayArgs2("b", "c");
// Output: 12 a b c