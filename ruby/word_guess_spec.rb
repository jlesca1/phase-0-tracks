require_relative 'word_guess'

describe NumberGuessing do
  let(:number_guessing) { NumberGuessing.new("apple") }

  it "Checks to see if the guessed letter is in the word.  This test is for a letter that IS in the word " do
    expect(number_guessing.guess("a")).to eq "Good job! The word contains a"
  end

  it "Checks to see if the guessed letter is in the word.  This test is for a letter that IS NOT in the word " do
    expect(number_guessing.guess("z")).to eq "Sorry, the word does not contain the letter z"
  end
end