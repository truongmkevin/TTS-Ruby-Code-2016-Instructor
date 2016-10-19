require_relative 'kangaroo'

# def foo(str: "foo", num: 424242)
#   [str, num]
# end

# puts foo

fighter1 = Fighter.new("Rocky", 200, 20, false)
fighter2 = Kangaroo.new("Drago", 230, 18, false)
ninja = Fighter.new("Hanzo", 100, 40, true)
ninja2 = Fighter.new("Kago", invisibility: true, power: 20, health: 200)
puts ninja2.inspect
fighter2.attack(ninja)

# Have user create 2 fighters
# Have menu option to pick who attacks
# End game when health <= 0 on any fighter