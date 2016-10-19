require_relative 'fighter'

class Kangaroo < Fighter

  def initialize(name, health, power, inivisibility)
    super
  end

  def attack(target)
    puts "KAKAKAKAKAKA!"
    super
  end

end
