# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
# initialize instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls predicted_deaths and speed_of_spread with the instance variables as parameters
  def virus_effects
        "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

# generates a number of deaths, which is the population mulitplied by a factor/rate that depends on population_density. Number of deaths increase with population density.
  def predicted_deaths
    case
    when @population_density >= 200
      (@population * 0.4).floor
    when@population_density >= 150
      (@population * 0.3).floor
    when @population_density >= 100
      (@population * 0.2).floor
    when @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
  end

# calculates speed of virus spread based on population_density. The higher the population density, the less time it will take the virus spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case
    when @population_density >= 200
      0.5
    when @population_density >= 150
      1
    when @population_density >= 100
      1.5
    when @population_density >= 50
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  puts VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end

#=======================================================================
# Reflection Section

# require_relative imports code from another file, making accessible from the calling file. It's different from require in that it looks for the file in the same directory as the calling file, rather than looking through the ruby path, or needing an absolute file path.