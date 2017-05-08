/* Pseudocode
 * reverse function.
 * Takes 1 string parameter and returns a string
 * result variable set to empty string
 * FOR loop of index 1 and <= string.length
 *  concatenate results with string[index.length - index]
 * RETURN result string
*/ 
function reverse(string){
  var result = '';

  for(var i = 1; i <= string.length; i++){
    result += string[string.length - i];
  }
  return result;
}

console.log("abcdef reversed is: " + reverse("abcdef"));
var forwards = "abcefg"
var backwards = "gfecba"
console.log("reverse function reveses strings: " + (backwards == reverse(forwards)));
