# Pseudocode
#
# - Have user input their name
# - Swap first and last name
# - Chanage each vowel to next vowel
# - Change each consonant to next consonant
# -

# Main Code

print "Please enter your first and last name: "
name = gets.chomp

name_array = name.split(" ")
first_name = name_array.shift
name_array.push(first_name)

new_name = name_array[0] + " " + name_array[1]

letters_array = new_name.split("")
p "letters array"
p letters_array

new_index = 0
next_index = 0

final_name_array = []
vowel_array = ["a","e","i","o","u"]
consonant_array = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","u","v","w","x","y","z"]

# This will itterate through the letters_array array and switch each vowel to the next vowel and each consonant to the next consonant
letters_array.map! do |letter|
  if vowel_array.include?(letter)
    p "letter: #{letter}"
    index = vowel_array.index(letter)
    p "letter index: #{index}"
    new_index = index + 1
    p "new index #{new_index}"
    new_letter = vowel_array[next_index]
    p "new letter: #{letter}"
    final_name_array.push(new_letter)
    p "New letter #{letter}"
  end
  #p "Final name #{final_name_array}"
end