# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + "<3 :-)"
#   end
# end

# p Shout.yell_angrily("What the fuck")
# p Shout.yelling_happily("ur damn right")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + "<3 :-)"
  end
end

class Crossing_guard
  include Shout
end

class Base_ball_umpire
  include Shout
end

sam = Crossing_guard.new
p sam.yelling_happily("Hello Kids")
p sam.yell_angrily("Stop and wait for us to cross")

tom = Base_ball_umpire.new
p tom.yelling_happily("Good Game")
p tom.yell_angrily("Yes, that was a strike")