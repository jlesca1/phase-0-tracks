class Puppy
  def initialize()
    puts "Initializing new puppy instance..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(integer)
    integer.times do
      puts "Woof!"
    end
  end
  def roll_over()
    puts "*rolls over*"
  end
  def dog_years(human_years)
    dog_years = human_years/7
    return dog_years
  end
  def do_flips(amount_of_flips)
    amount_of_flips.times do |i|
      puts "The dog flips #{i} times!"
    end
  end
end

#DRIVER CODE:
puppy = Puppy.new()
puppy.fetch("Gorilla toy")
puppy.speak(3)
puppy.roll_over
p puppy.dog_years(21)
puppy.do_flips(3)

# NEW CLASS (RELEASE 2)
class Parrot
  def initialize()
    puts "Creating Parrot..."
  end
  def speak(word)
    puts "Says #{word}!"
  end
  def flies(point_a, point_b)
    puts "*Flies from #{point_a} to #{point_b}.*"
  end
end
parrot = Parrot.new
parrot.speak("Hello")
parrot.flies("shoulder", "the bathroom")
new_parrots = []
50.times do |i|
  new_parrots << Parrot.new
  puts "You made parrot #{i}"
end
puts new_parrots
new_parrots.each do |parrot|
  parrot.speak("How are you?")
  parrot.flies("shoulder", "the bathroom")
end

