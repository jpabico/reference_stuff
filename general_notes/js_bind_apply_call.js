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
