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
    @letter_guess_index_array=[]
  end

  def guess(word_array, result_array, letter_guess)

    if result_array.include?(letter_guess)
      puts "You have already choosen #{letter_guess}, please choose a different number"
    # elsif !result_array.include?("-")
    #   puts "Contrats!"
    elsif word_array.include?(letter_guess)
      puts "Good job! The word contains #{letter_guess}"

      @letter_guess_index_array = word_array.each_index.select { |i| word_array[i]==letter_guess }

      count=0

      while count < @letter_guess_index_array.length
        result_array[@letter_guess_index_array[count]] = letter_guess
        count+=1
        p result_array
      end
    else
      puts "Sorry, the word does not contain the letter #{letter_guess}"
    end
  end
end

# Driver Code ###########################################

print "Input a word for the other player to guess: "
word = gets.chomp
word_array = word.split(%r{\s*})
result_array = word.split(%r{\s*})
p result_array.fill("-")

number_guessing = Number_guessing.new()

x=0
while x < 10 && result_array.include?("-")
  print "Guess a letter: "
  letter_guess = gets.chomp
  number_guessing.guess(word_array, result_array,letter_guess)
  x+=1
end

if result_array.include?("-")
  puts "Sorry, but the wor you are looking for is #{word}"
else
  puts "Congrats! You correctly guessed the word #{word}!"
end