class Fighter

  attr_reader :name
  attr_accessor :health, :power, :invisibility

  def initialize(name: "test", health: 100, power: 10, invisibility: false)
    @name = name
    @health = health
    @power = power
    @invisibility = invisibility
  end

  # def initialize(name = "Unknown Fighter", health = 100, power = 10, invisibility = false)
  #   @name = name
  #   @health = health
  #   @power = power
  #   @invisibility = invisibility
  # end

  def attack(target)
    if check_invisibility?(target)
      puts "*WHOOOOSH* #{self.name} just swung at the air and missed..."
    else
      target.lose_health(self)
      puts "#{self.name} attacks #{target.name} for #{self.power} damage."
    end
  end

  def lose_health(attacker)
    self.health -= attacker.power
  end

  def check_invisibility?(target)
    if target.invisibility == true
      return true
    else
      return false
    end
  end

end