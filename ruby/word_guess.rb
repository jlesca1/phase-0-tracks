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
  attr_reader :letter_guess
  attr_accessor :word_array, :word

  def initialize(word)
    @correct_guess = false
    @letter_guess
    @word = word
    @letter_guess_array=[]
    @word_array = @word.split(%r{\s*})
    @result_array = Array.new(@word.length, "_")
    # @guess_count = @word.length+5
  end

  def guess(letter_guess)

    if @letter_guess_array.include?(letter_guess)
      puts "You have already choosen #{letter_guess}, please choose a different number"
      "You have already choosen #{letter_guess}, please choose a different number"
    elsif @word_array.include?(letter_guess)

  #   amount_of_flips.times do |i|
  #     puts
  #   end

      @word_array.each_index { |i| @result_array[i]==letter_guess }
      p word_array
      p result_array
      # @letter_guess_index_array = @word_array.each_index.select { |i| @word_array[i]==letter_guess }
      # count=0
      # while count < @letter_guess_index_array.length
      #   @result_array[@letter_guess_index_array[count]] = letter_guess
      #   count+=1
      # end
      puts "Good job! The word contains #{letter_guess}"
      "Good job! The word contains #{letter_guess}"
    else
      puts "Sorry, the word does not contain the letter {letter_guess}"
      "Sorry, the word does not contain the letter #{letter_guess}"
    end
  end
end


# Driver Code ###########################################

print "Input a word for the other player to guess: "
@word = gets.chomp

number_guessing = NumberGuessing.new(@word)
x=0
while x < 10 && @result_array.include?("_")
  print "Guess a letter: "
  number_guessing.guess(gets.chomp)
  @letter_guess_array = gets.chomp
  x+=1
end

if @result_array.include?("_")
  puts "Sorry, but the word you are looking for is #{@word}"
else
  puts "Congrats! You correctly guessed the word #{@word}!"
end