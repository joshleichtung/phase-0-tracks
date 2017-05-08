/* Longest phrase function
 * Parameters: array
 * Return: string
 * variable result set equal to first phrase
 * FOR loop through array starting with index 1
 *  IF length of array at index is greater than current result length
 *    Set result equal to string at array index
*/

function longest_phrase(ary){
  var result = ary[0];
  for(var i = 1; i < ary.length; i++){
    if (ary[i].length > result.length){
      result = ary[i];
    }
  }
  return result;
}

var words = ['one', 'two', 'three'];
console.log("Should be three: " + longest_phrase(words));
var phrases = ["short", "a medium phrase", "this is a pretty long phrase", "this is a really super long phrase, and it should be the longest"];
console.log(longest_phrase(phrases));


/* shared pair function
 * Parameters: 2 objects
 * got object keys of first object.
 * Iterate over object keys to see if other object has matching value
 *
*/

function matching_key(obj1, obj2){
  for(key in obj1){
    console.log("KEY: " + key);
    if (obj1.hasOwnProperty(key) && obj1[key] === obj2[key]){
      return true;
    }
  }
  return false
}

obj1 = {one: 1, two: "too", three: "a crowd"};
obj2 = {one: 1, too: 2, three: 4};
obj3 = {dogs: "cool", cats: "lame", hamsters: "meh"};

/*
 * Generate random string
 * Parameters: integer for length of string to generate
 * Return: array of Random strings
 * create variable empty string result
 * FOR loop n times
 *  random integer from 97 to 122 (A-z)
 *  concat FROMCHARCODE of rand into string
 * RETURN result
*/

function random_string(n){
  var result = [];

  for(var i = 0; i < n; i++){
    var word_length = random_int(1, 10);
    var string = "";
    for(var j = 0; j < word_length; j++){
      string += String.fromCharCode(random_int(97, 122));
    }
    result.push(string);
  }
  return result;
}

// Credit of random int from:
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random
function random_int(min, max){
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

//driver code
// for(var i = 0; i < 20; i++){
//   console.log("Random int: " + random_int(1, 10));
// }
// console.log(random_string(100));


//Release 2 Driver Code

for(var i = 0; i < 10; i++){
  console.log("Random Strings " + (i + 1));
  rand_strings = random_string(10);
  console.log(rand_strings);
  console.log("Longest string: " + longest_phrase(rand_strings));
}
