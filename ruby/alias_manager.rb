# Pseudocode
#
# - Have user input their name
# - Swap first and last name
# - Chanage each vowel to next vowel
# - Change each consonant to next consonant
# - Print out Alias

# Main Code

# print "Please enter your first and last name: "
# name = gets.chomp.downcase

original_name_array = []
original_name_array.push(name)

def alias(name)
  name_array = name.split(" ")
  first_name = name_array.shift
  name_array.push(first_name)

  new_name = name_array[0] + " " + name_array[1]

  letters_array = new_name.split("")

  next_index = 0
  final_name_array = []
  vowel_array = ["a","e","i","o","u"]
  consonant_array = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","u","v","w","x","y","z"]

  # This will iterate through the letters_array array and switch each vowel to the next vowel and each consonant to the next consonant

  letters_array.map! do |letter|
    if vowel_array.include?(letter)
      index = vowel_array.index(letter)

      if index < vowel_array.length-1
        next_index = index + 1
        new_letter = vowel_array[next_index]
        final_name_array.push(new_letter)
      else
        new_letter = vowel_array[0]
        final_name_array.push(new_letter)
      end
    elsif consonant_array.include?(letter)
      index = consonant_array.index(letter)

      if index < consonant_array.length-1
        next_index = index + 1
        new_letter = consonant_array[next_index]
        final_name_array.push(new_letter)
      else
        new_letter = consonant_array[0]
        final_name_array.push(new_letter)
      end
    else
     final_name_array.push(" ")
    end
  p final_name = final_name_array.join("")
  end
  p final_name_array.join("")
end

 print "Please enter your first and last name: "
 name = gets.chomp.downcase

alias(name)
