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
