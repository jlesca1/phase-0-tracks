#===================================================
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

# Main Code ========================================
class Word_game
  attr_reader :word_array, :results_array, :letter_guess, :letter_guess_array, :guesses_left

  def initialize(word)
    @word = word
    @word_array = @word.split(%r{\s*})
    @results_array = Array.new(@word.length, "_")
    @letter_guess
    @letter_guess_array
    @guesses_left=10
  end

  def letter_check
    if letter_guess.include? @letter_guess
      puts "You have alreay guessed #{@letter_guess}, plese choose a different letter."
    elsif @word_array.include? @letter_guess
      puts "Great!  The word contains #{@letter_guess}"
    else
      puts "Sorry,the word you are looking for does not contain a #{@letter_guess}"
    end
  end

end

# Driver Code ======================================

print "Choose a word to use in this game"
word = gets.chomp

word_game = Word_game(word).new

print "Guess a letter, you have #{Word_game.guesses_left} gusses."
letter_guess = gets.chomp
word_game.letter_check