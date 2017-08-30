# Virus Predictor

# I worked on this challenge [with: Khristoph].
# Virus Predictor

# I worked on this challenge [with: Khristoph].
# We spent [1.75] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative connects this page with the 'state_data' page and share data between the two pages.

require_relative 'state_data'

class VirusPredictor

  def self.report_generator(states)
    states.each do |state, data|
      state_virus_predictor = new(state, data[:population_density], data[:population])
      state_virus_predictor.virus_effects
    end
  end

  # Upon starting the object (.new) suet up these instance varialbes and takes in the initial paramateres.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs two seperate methods: predicted_deaths and speed_of_spread.  See below for more.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Takes density and constant to find the perdicted deaths. Predicted deaths is solely based on population density
  def predicted_deaths
    population_hash = {200=> 0.4, 150=> 0.3, 100=> 0.2, 50=> 0.1, 0=> 0.05}
    population_hash.each do |key, value|
      if @population_density >= key
        number_of_deaths = (@population * value).floor
        print " #{@state} will lose #{number_of_deaths} people in this outbreak"
        return
      end
    end
  end

  # Uses the density to perdict the months it will take to spread the disease in months.
  def speed_of_spread
    speed = 0.0
    density_hash = {200=> 0.5, 150=> 0.5, 100=> 1.5, 50=> 2, 0=> 2.5}
    density_hash.each do |key, value|
      if @population_density >= key
        speed += value
        puts " and will spread across the state in #{speed} months.\n\n"
        return
      end
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#loop
#name and make an instance of VirusPredictor
#input: name, pop density(nested), population (nested)
# run virus_effects

STATE_DATA.each do |state, data|
  state_virus_predictor = VirusPredictor.new(state, data[:population_density], data[:population])
  state_virus_predictor.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# alabama.speed_of_spread

#=======================================================================
# Reflection Section
#
#
#
#