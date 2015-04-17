// function deduplicate(inputArray) {
//     var returnArray = [];
//     for(var i = 0; i < inputArray.length ; i++) {

//         if(returnArray.indexOf(inputArray[i]) < 0) {

//             returnArray.push(inputArray[i]);
//             console.log(returnArray);
//         }
//     }

//     return returnArray;
// }


// a = [1, 2, 2, 5, 2, 7, 3, 9, 1, 9];
// b = [1, '1', 2, 0, false, true];
// c = [8, 3, [1, 2], [1, 2, 3], [1, 2], [2, 1], true];
// d = [1, {a: 'b', c: 'd'}, {c: 'd', a: 'b'}, {e: 'f'}, 'b'];

// e = deduplicate(a);
// console.log(e);

// function deduplicate(inputArray) {
//     var returnArray = [];
    
//     // iterate through inputArray
//     for(var i = 0; i < inputArray.length ; i++) {

//         // check if element of inputArray is an array 
//         if (Object.prototype.toString.call( inputArray[i] ) === '[object Array]') {
           
//             // assigning to temporary var does not work...
//             // var tempReferenceName = inputArray[i];
//             // inputArray.splice(i, 1, tempReferenceName);
//             // console.log(inputArray);

//             // how determine if array already in returnArray is equal to array in inputArray?

//             console.log("array - index is " + i);
//         }

//         // check if element of inputArray is an object
//         if(typeof(inputArray[i])=="object" && Object.prototype.toString.call( inputArray[i] ) !== '[object Array]') {

//             // how determine if array already in returnArray is equal to array in inputArray?
//             console.log("object - index is " + i);
//             console.log(Object.keys(inputArray[i]));

//         }

//         // check to see if element from inputArray is already in returnArray
//         if(returnArray.indexOf(inputArray[i]) < 0) {

//             returnArray.push(inputArray[i]);
//             console.log(returnArray);
//         }
//     }

//     return returnArray;
// }


// a = [1, 2, 2, 5, 2, 7, 3, 9, 1, 9];
// b = [1, '1', 2, 0, false, true];
// c = [8, 3, [1, 2], [1, 2, 3], [1, 2], [2, 1], true];   // array at index 4 should not be present in results
// d = [1, {a: 'b', c: 'd'}, {c: 'd', a: 'b'}, {e: 'f'}, 'b'];   // object at index 2 should not be present in results

// e = deduplicate(d);
// console.log(e);

// function deduplicate(inputArray) {
//     var returnArray = [];
    
//     // iterate through inputArray
//     for(var i = 0; i < inputArray.length ; i++) {

//         // check if element of inputArray is an array 
//         if (Object.prototype.toString.call( inputArray[i] ) === '[object Array]') {
           
//             // assigning to temporary var does not work...
//             // var tempReferenceName = inputArray[i];
//             // inputArray.splice(i, 1, tempReferenceName);
//             // console.log(inputArray);

//             // how determine if array already in returnArray is equal to array in inputArray?

//             console.log("array - index is " + i);
//         }

//         // check if element of inputArray is an object
//         if(typeof(inputArray[i])==="object" && Object.prototype.toString.call( inputArray[i] ) !== '[object Array]') {

//             // how determine if array already in returnArray is equal to array in inputArray?
//             console.log("object - index is " + i);
//             console.log(Object.keys(inputArray[i]));

//             // inputArray[i]...
//             // see lines 140-154


//         }

//         // check to see if element from inputArray is already in returnArray
        
//         var aa = findInsideArray(returnArray, inputArray[i]);
//         console.log(aa);
//         console.log("============");
//         if(aa) {
//             continue;
//         } else {
//             returnArray.push(inputArray[i]);
//             console.log(i);
//             console.log("that was the index");
//         } 
//     }

//     return returnArray;
// }

// function findInsideArray(searchArray, target) {
//     for(var i = 0; i < searchArray.length; i++) {
//         if(String(searchArray[i])==String(target)) {
//             console.log("matched!");
//             return true;
//         }
//     }
// }


// a = [1, 2, 2, 5, 2, 7, 3, 9, 1, 9];
// b = [1, '1', 2, 0, false, true];
// c = [8, 3, [1, 2], [1, 2, 3], [1, 2], [2, 1], true];   // array at index 4 should not be present in results
// d = [1, {a: 'b', c: 'd'}, {c: 'd', a: 'b'}, {e: 'f'}, 'b'];   // object at index 2 should not be present in results

// e = deduplicate(c);
// console.log(e);


// // convert object to array then pass into findInsideArray function?
// var json_data = {"2013-01-21":1,"2013-01-22":7};
// var result = [];

// for(var i in json_data)
//     result.push([i, json_data [i]]);
// 2
// result
// [Array[2], Array[2]]
// String(result)
// "2013-01-21,1,2013-01-22,7"
// result.sort()
// [Array[2], Array[2]]
// String(result.sort())
// "2013-01-21,1,2013-01-22,7"



function deduplicate(inputArray) {
    var returnArray = [];
    
    // iterate through inputArray
    for(var i = 0; i < inputArray.length ; i++) {

        // check if element of inputArray is an array 
        if (Object.prototype.toString.call( inputArray[i] ) === '[object Array]') {
            // console.log("array - index is " + i);
        }

        // check if element of inputArray is an object
        if (typeof(inputArray[i])==="object" && Object.prototype.toString.call( inputArray[i] ) !== '[object Array]') {
            // console.log("object - index is " + i);
            // console.log(Object.keys(inputArray[i]));
        }

        // check to see if element from inputArray is already in returnArray
        var aa = findInsideArray(returnArray, inputArray[i]);
        // console.log(aa);
        // console.log("============");
        if(aa) {
            continue;
        } else {
            returnArray.push(inputArray[i]);
            // console.log(i);
            // console.log("that was the index");
        } 
    }

    return returnArray;
}

function findInsideArray(searchArray, target) {
    for(var i = 0; i < searchArray.length; i++) {
        if(String(searchArray[i])==String(target)) {
            // console.log("matched!");
            return true;
        }
    }
}

a = [1, 2, 2, 5, 2, 7, 3, 9, 1, 9];
b = [1, '1', 2, 0, false, true];
c = [8, 3, [1, 2], [1, 2, 3], [1, 2], [2, 1], true];   // array at index 4 should not be present in results
d = [1, {a: 'b', c: 'd'}, {c: 'd', a: 'b'}, {e: 'f'}, 'b'];   // object at index 2 should not be present in results

console.log(deduplicate(a));   // should be [1, 2, 5, 7, 3, 9]
console.log(deduplicate(b));   // should be [1, '1', 2, 0, false, true]
console.log(deduplicate(c));   // should be [8, 3, [1, 2], [1, 2, 3], [2, 1], true]
console.log(deduplicate(d));   // should be [1, {a: 'b', c: 'd'} , {e: 'f'}, 'b']

// preprocess objects
// save ORIGINAL object but process reference to object
// get keys of objects Object.keys(input_object)
// sort keys
// emptyArray.push([key_1, input_object[key_1])  (iterate by keys_array.length)
// stringify
// compare strings

// push preprocessed string into preprocessedReturnArray AND push original object to returnArray
// preprocessedReturnArray is always used for comparison
// if comparison is true, push both types
