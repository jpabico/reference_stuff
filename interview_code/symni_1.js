function dedup(inputArray) {

    // modified arrays are for comparison purposes only
    var modifiedInputArray = [];
    var modifiedReturnArray = [];
    var returnArray = [];
    
    // iterate through inputArray
    for(var i = 0; i < inputArray.length ; i++) {

        // check if element of inputArray is an array or object
        if (Object.prototype.toString.call( inputArray[i] ) === '[object Array]') {

            modifiedInputArray.push(String(inputArray[i]));

        } else if (typeof(inputArray[i])==="object" && Object.prototype.toString.call( inputArray[i] ) !== '[object Array]') {
            
            // stringify object in preparation for comparison
            var objectKeys = Object.keys(inputArray[i]);
            var sortedKeys = objectKeys.sort();
            var preStringObject = {};

            for(var k = 0; k < sortedKeys.length; k++) {
                preStringObject[sortedKeys[k]] = [sortedKeys[k], inputArray[i][sortedKeys[k]]];
            }

            var stringObject = JSON.stringify(preStringObject);
            modifiedInputArray.push(stringObject);

        } else {

            modifiedInputArray.push(inputArray[i]);

        }

        // check to see if element from modifiedInputArray is already in modifiedReturnArray
        if (modifiedReturnArray.indexOf(modifiedInputArray[i]) < 0) {
            returnArray.push(inputArray[i]);
            modifiedReturnArray.push(modifiedInputArray[i]);
        }

    }

    return returnArray;
}

a = [1, 2, 2, 5, 2, 7, 3, 9, 1, 9];
b = [1, '1', 2, 0, false, true];
c = [8, 3, [1, 2], [1, 2, 3], [1, 2], [2, 1], true];   // array at index 4 should not be present in results
d = [1, {a: 'b', c: 'd'}, {c: 'd', a: 'b'}, {e: 'f'}, 'b'];   // object at index 2 should not be present in results

console.log(dedup(a));   // should be [1, 2, 5, 7, 3, 9]
console.log(dedup(b));   // should be [1, '1', 2, 0, false, true]
console.log(dedup(c));   // should be [8, 3, [1, 2], [1, 2, 3], [2, 1], true]
console.log(dedup(d));   // should be [1, {a: 'b', c: 'd'} , {e: 'f'}, 'b']
