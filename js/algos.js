/*
Pseudocode
longestWord

Input: An array of strings (words or phrases)
Output: String (the longest work of phrase)

Create input array
Create a variable to hold the logest string
Find the length of each item
Compare the lengths of the items to each other
Return longest string
*/

// Main Code
// longestWord

function longestWord(input_array) {

  var result = "";

  for (var i=0; i<input_array.length-1; i++) {
    if (input_array[i+1].length > input_array[i].length && input_array[i+1].length > result.length) {
      result = input_array[i+1];
    }else if(input_array[i].length > input_array[i+1].length && input_array[i].length > result.length){
      result = input_array[i]
    }
  }
  console.log(result);
}

//============================================================

/*
Pseudocode
keyValueMatch

Compair each of the keys in a given hash object.
If the keys match, check to see if the values match
If they do return true
If they do not return false
*/

// Main Code
// keyValueMatchs

function keyValueMatch(object1, object2) {
  $key1 = Object.keys(object1);
  //console.log($key1);
  $key2 = Object.keys(object2);
  //console.log($key2);

  $value1 = Object.values(object1);
  //console.log($value1);
  $value2 = Object.values(object2);
  //console.log($value2);

  for (var i=0; i<$key1.length; i++) {
    for (var j=0; j<$key2.length; j++) {
      //console.log($key1[i]);
      //console.log($key2[j]);
      if ($key1[i]==$key2[j]) {
        //console.log("Keys match! " + $key1[i] + " " + $key2[j]);
        if ($value1[i]==$value2[j]) {
          //console.log("Values match! " + $value1[i] + " " + $value2[j]);
          console.log("We have a key-value match!")
          return true;
        }else{
          //console.log("Values do NOT match so there are no key-value matches " + $value1[i] + " " + $value2[j]);
        }
      }else{
        //console.log("Keys do NOT match so there are no key-value matches "  + $key1[i] + " " + $key2[j]);
      }
    }
  }
  return false;
}

//============================================================

// Driver Code
// longestWord

var input_array1 = ["long phrase","longest phrase","longer phrase"];
longestWord(input_array1);

var input_array2 = ["turtle","cow","lemur","owl"];
longestWord(input_array2);

var input_array3 = ["blue","green","orange","red","tan","stone"];
longestWord(input_array3);
console.log (" ");

//============================================================

// Driver Code
// keyValueMatchs
var match

match = keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(match);