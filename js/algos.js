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
  console.log("The list of words are: " + input_array);
  console.log("The longest word is: " + result);
}

//============================================================
// This function (randomWords) returns an array of random words between the length of 1 and 10.  The parmater osf the method is the total number of works in the array.

function randomWords(num_of_words) {
  word_array=[];
  var word = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

  for(var n = 0; n < num_of_words; n++) {
    var word_length = Math.floor(Math.random() * 10 + 1);
    for(var i = 0; i < word_length; i++) {
      word += alphabet.charAt(Math.floor(Math.random()*alphabet.length));
    }
    word_array.push(word);
    word="";
  }
  return word_array
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
      if ($key1[i]==$key2[j]) {
        if ($value1[i]==$value2[j]) {
          console.log("We have a key-value match!")
          return true;
        }
      }
    }
  }
  return false;
}

//============================================================

// Driver Code
// longestWord

// var input_array1 = ["long phrase","longest phrase","longer phrase"];
// longestWord(input_array1);

longestWord(randomWords(4));

console.log (" ");

//============================================================

// Driver Code
// keyValueMatchs
var match

match = keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(match);