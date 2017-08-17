def animals
  x1 = “dogs”
  x2 = “cats”
  puts “This is before the block”
  yield(x1, x2)
  puts “This is after the block”

end

animals { |x1, x2| puts “I’m not sure if I want #{x1} or #{x2}” }

# ......................................... #

dog_breeds = [“terrior”, “bassett hound”, “golden lab”, “rottweiler”, “corgi”]

puts “This is before the array change”
p dog_breeds

dog_breeds.each do |dogs|
  dogs.next
end

puts “This is after the array change but before the map change”
p dog_breeds

dog_breeds.map! do |dogs|
 puts dogs
 dogs = dogs + ” dog”
end

puts “This is after the array change with map”
p dog_breeds

# ........................................... #

pet_types = {
  cat: “tabby”,
  dog: “corgi”,
  rabbit: “long ear”,
  fox: “fennec”,
}

puts “This is before the hash change”
p pet_types

pet_types.each do |species, type|
  puts “#{type} is a type of #{species}!”
end

puts “This is after the hash change”
p pet_types


# ............................................. #

numbers = [104, 37, 11, 92, 20912]

numbers.delete_if { |numbers| numbers < 90 }

p numbers

# .............................................. #

numbers = { “a” => 8737, “b” => 11000, “c” => 11001 }

numbers.delete_if { |key, value| key >= “b” }

p numbers

# .............................................. #

letters = [“a”,“d”,“m”,“z”]

letters.keep_if { |endpoints| endpoints == “a” }

p letters

# .............................................. #

letters = { “c” => “joe”, “m” => “brittany”, “s” => “matt”, “y” => “yourmom”}

letters.keep_if { |key, value| key == “y” }

p letters

# ............................................... #

numbers = [ 52, 111, 567, 1011 ]

p numbers.fetch(0)

# ................................................ #

number = { “a” => 2, “b” => 3, “c” => 5, “d” => 8 }

p number.fetch(“c”)

# ................................................. #

number = [ 100, 101, 102, 103, 104, 0 ]
p number.drop_while {|i| i < 102 }

# ................................................. #

food = { “c” => “bacon”, “m” => “hot links”, “s” => “funnel cake”, “y” => “churros”}

food.keep_if { |key, value| key != “c” }

p food