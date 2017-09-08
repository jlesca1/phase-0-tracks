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
    @letter_guess_array=[]
    @guesses_left=10
  end

  def letter_check(letter_guess)
    if @letter_guess_array.include?(letter_guess)
      puts "You have alreay guessed the letter '#{letter_guess}', please choose a different letter."
    elsif @word_array.include?(letter_guess)
      count=0
      while count < @word_array.length
         if @word_array[count]== letter_guess
          @results_array[count] = letter_guess
         end
        count+=1
      end
      puts "Great!  The word contains the letter '#{letter_guess}'"
      @guesses_left-=1
    else
      puts "Sorry,the word you are looking for does not contain a the letter '#{letter_guess}'"
      @guesses_left-=1
    end
    @letter_guess_array.push(letter_guess)
    p @results_array
  end

end

# Driver Code ======================================

print "Choose a word to use in this game: "
word = gets.chomp

word_game = Word_game.new(word)

while word_game.guesses_left > 0 && word_game.results_array.include?("_")
  print "Guess a letter, you have #{word_game.guesses_left} guesses: "
  letter_guess = gets.chomp
  word_game.letter_check(letter_guess)
end

if word_game.results_array.include?("_")
  puts "Sorry, but the word you are looking for is '#{word}'"
else
  p "Congrats! You correctly guessed the word '#{word}!'"
end