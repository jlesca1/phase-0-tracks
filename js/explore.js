/*
Pseudocode

This function takes in a string and prints out the reverse of the word.

ex. Hello => olleH

Take in a given string.
Starting with the last letter of the word.
Add the last letter the a new string.
Back track to the 2nd from last letter.
Add the 2nd to last letter.
Contime to move to the previous letter until the fist letter is added to the new string.
Return the new string with the reversed word.
Program ends.
*/
var result;
var reversed_str="";
function reverse(str) {
  result = str;

  for (var i = str.length-1; i>=0; i--) {
    reversed_str+=str[i];
  }
  result = result + " " + reversed_str;
  return result;
}

result = reverse("Hello");

if (1==1) {
  console.log ("Result = " + result);
}