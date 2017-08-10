# take in a string as input
# id the length of the word
# take the each letter in the work and turn it into the following letter in alphabet
# print result
# ex. hello => ifmmp

def encrypt_method (test_string)
  index=0
  while index < test_string.length
    print test_string[index].next
    index+=1
  end
end

encrypt_method ("hello")

# take in encripted string as input
# id the length of the word
# take each letter and turn it into the preceeding letter of the alphabet
# print the new letter
# ifmmp => hello

def decrypt_method (test_string)
  index=0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < test_string.length
    old_letter = alphabet.index(test_string[index])
    new_letter = old_letter-1
    print alphabet[new_letter]
    index+=1
  end
end

decrypt_method ("ifmmp")