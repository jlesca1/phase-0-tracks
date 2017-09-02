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
console.log("length1 " + object1.length)
console.log("test1 " + object1.age);
console.log("test2 " + object1.name);
console.log("test3 " + object2.age);
console.log("test4 " + object2.name);
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

//============================================================

// Driver Code
// keyValueMatchs
var object1 = {name: "Steven", age: 54}
var object2 = {name: "Tamir", age: 54}
function yourFunction(object1, object2) {

console.log("test1 " + object1.age);
console.log("test2 " + object1.name);
console.log("test3 " + object2.age);
console.log("test4 " + object2.name);
}
// for (prop in yourFunction) {
//   console.log(`yourFunction.${prop} = ${yourFunction[prop]}`);
// }
//keyValueMatch(yourFunction);
keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54})