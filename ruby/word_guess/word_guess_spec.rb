require_relative 'word_guess'

describe Word_game do
  let(:word_game) { Word_game.new("apple") }

  it "Checks to see if the guessed letter is in the word.  This test is for a letter that IS in the word " do
    expect(word_game.letter_check("a")).to eq "Great!  The word contains the letter 'a'"
  end

  it "Checks to see if the guessed letter is in the word.  This test is for a letter that IS NOT in the word " do
    expect(word_game.letter_check("z")).to eq "Sorry,the word you are looking for does not contain a the letter 'z'"
  end
end