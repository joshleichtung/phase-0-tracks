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

