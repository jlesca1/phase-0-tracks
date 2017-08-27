# Pseudocode ############################################
#
# One user enters the word to be guessed
# A second user attemps to guess the work entered by the first user
# There are a limited number of guess
# Guessing the same word multiple timeswill not count aginst the user.
# User has feed back about the word
# If the word is airplane it will be initally show  as  "_________"
# For each correct guess the letter is shown.  i.e. if an 'a' is guessed will show "a_______"
# If letter is not in the word use will be told their guess is not correct
# If word is gussed, user gets a contrats message
# If the word is not guess the get a message letting them know they did not guess the word


# Main Code #############################################

word_array=[]
result_array=[]

class Number_guessing
  attr_reader :letter_guess
  attr_accessor :word_array, :word

  def initialize
    @correct_guess = false
    @guess_count
    @letter_guess
    @word
  end

  def guess(word_array, letter_guess)
    if word_array.include?(letter_guess)
      print "Good job! The word contains #{letter_guess}"
      # print the word with letters guessed so far
    else
      puts "Sorry, the word does not contain the letter #{letter_guess}"
    end
  end

end


# Driver Code ###########################################

print "Input a word for the other player to guess: "
p word = gets.chomp
p word_array = word.split(%r{\s*})
result_array = word.split(%r{\s*})
p result_array.fill("-")

print "Guess a letter: "
p letter_guess = gets.chomp

number_guessing = Number_guessing.new()

number_guessing.guess(word_array, letter_guess)