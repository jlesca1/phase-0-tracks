#=======================================================
# Pseudocode for the word guess game.
#
# - Git word from user one.
# - Put the word in an array.
# - make a second array that is the same length as the word to guess but that is filled with under scores.
# - make a third array to keep tract of letter guessed so far.
# - as each letter is guessed have the program react in the following mannor:
#     - if the letter has already been guessed, let the user know and ask for another letter.
#     - if the letter IS NOT in the word, let the user know and add letter to the guessed array.
#     - if the letter IS in the word, let the user know and add letter to the guessed array
# - if the word IS NOT quessed in the given number of guesses, let the user know they ran out of guesses and what the correct word is.
#   - if the word IS quessed in the given number of guesses, let the user known they guessed the correct word.