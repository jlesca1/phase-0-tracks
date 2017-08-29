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

class NumberGuessing
  attr_reader :letter_guess, :result_array
  attr_accessor :word_array, :word, :letter_guess_array

  def initialize(word)
    @word = word
    @word_array = @word.split(%r{\s*})
    @result_array = Array.new(@word.length, "_")
    @letter_guess_array=[]
    @letter_guess
    # @guess_count = @word.length+5
  end

  def guess(letter_guess)

    if @letter_guess_array.include?(letter_guess)
      puts "You have already choosen #{letter_guess}, please choose a different number"
      "You have already choosen #{letter_guess}, please choose a different number"
    elsif @word_array.include?(letter_guess)

      #p "letter_guess: #{letter_guess}"
      count=0
      while count < @word_array.length
        if @word_array[count]== letter_guess
          @result_array[count] = letter_guess
        end
        count+=1
      end
      p result_array
      puts "Good job! The word contains #{letter_guess}"
      "Good job! The word contains #{letter_guess}"
    else
      #puts "Sorry, the word does not contain the letter {letter_guess}"
      puts "Sorry, the word does not contain the letter #{letter_guess}"
    end
  end
end

# Driver Code ###########################################

print "Input a word for the other player to guess: "
@word = gets.chomp

number_guessing = NumberGuessing.new(@word)
x=0
while x < 10 && number_guessing.result_array.include?("_")
  print "Guess a letter: "
  letter_guess=gets.chomp
  number_guessing.guess(letter_guess)
  number_guessing.letter_guess_array.push(letter_guess)
  x+=1
end
p "can u c me?"
p number_guessing.result_array
if number_guessing.result_array.include?("_")
   puts "Sorry, but the word you are looking for is #{number_guessing.word}"
else
  puts "Congrats! You correctly guessed the word #{number_guessing.word}!"
end