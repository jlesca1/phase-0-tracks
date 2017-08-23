class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def gender()
    puts "This santa has a gender of #{@gender}"
  end

  def santa_ethnicity()
    puts "This santa has an ethnicity of #{@ethnicity}"
  end

  def santa_age()
    puts "Santa is #{@age} years old"
  end

  def celebrate_birthday()
    @age = @age+1
    puts "Santa is now #{@age} years old"
  end

  def get_mad_at(reindeer)
    puts "Santa gets mad at #{reindeer}"

      count = @reindeer_ranking.index(reindeer)
      p @reindeer_ranking
      while count < @reindeer_ranking.length
        @reindeer_ranking[count]=@reindeer_ranking[count+1]
        count+=1
      end

    @reindeer_ranking.pop
    @reindeer_ranking.push(reindeer)
    p @reindeer_ranking
  end
end

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

 santas[0].get_mad_at("Dasher")

puts ""
santas[0].speak
santas[0].eat_milk_and_cookies("chololate-chip")
santas[0].gender
santas[0].santa_ethnicity
santas[0].santa_age
santas[0].celebrate_birthday
puts ""
santas[1].speak
santas[1].eat_milk_and_cookies("snickerdoodle")
santas[1].gender
santas[1].santa_ethnicity
santas[1].santa_age
santas[1].celebrate_birthday
# puts ""
# santas[2].speak
# santas[2].eat_milk_and_cookies("peanutbutter")
# santas[2].santa_gender
# santas[2].santa_ethnicity
# santas[2].age
# santas[2].celebrate_birthday