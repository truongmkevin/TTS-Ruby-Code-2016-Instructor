# class Word < String

#   def very_long?(string)

#     if string.length > 10
#       return true
#     else
#       return false
#     end

#   end

# end

# # name constructor
# word = Word.new

# puts word.very_long?("superdupercalifragilicous")
# puts word.very_long?("nope")

# word2 = Word.new("superdupercalifragilicous")

# puts word2.reverse

# puts word2.class.superclass

class Person
  # calls setter and getter methods
  attr_reader # View Only
  attr_writer # Write Only
  attr_accessor :first_name, :last_name, :age # Combination of reader/writer

  def initialize(first_name, last_name, age)
    # instance variables
    @first_name = first_name
    @last_name = last_name
    @age = age
  end # end for initialize

  def introduction
    puts "#{@first_name} #{@last_name} is #{@age} years old."
  end # end for introduction

  # 3 methods below already taken care of with attr_accessor
  # def first_name
  #   return @first_name
  # end

  # def last_name
  #   return @last_name
  # end

  # def age
  #   return @age
  # end

end # end for class Person

class Student < Person

  attr_accessor :subject

  def initialize(first_name, last_name, age, subject)
    super(first_name, last_name, age)
    @subject = subject
  end

  def learning
    puts "#{@first_name} is a student learning #{@subject}"
  end

  # def subject
  #   return @subject
  # end
end

class Nerd < Student

  attr_accessor :pen_holder_color

  def initialize(first_name, last_name, age, subject, pen_holder_color)
    super first_name, last_name, age, subject
    @pen_holder_color = pen_holder_color
    nerd_wisdom("Green")
  end

  private

    def nerd_wisdom(new_color)
      @pen_holder_color = new_color
    end

end

person1 = Person.new("Kevin", "Truong", 26)
person2 = Student.new("Jacqueline", "Taylor", 76, "Ruby")
person3 = Student.new("Keith", "Clark", 15, "Ruby")
person4 = Nerd.new("Kevin", "Tofu", 100, "The Art of Being Cool", "Red")

person1.introduction
person2.introduction
person3.introduction
person4.introduction

# person1.learning # Won't work because learning is not defined for this object
person2.learning
person3.learning
puts person3.subject
puts "#{person4.first_name}'s pen holder color is #{person4.pen_holder_color}."
person4.nerd_wisdom("Purple")
puts "#{person4.first_name}'s pen holder color is #{person4.pen_holder_color}."

# puts person1.first_name
# person1.first_name = "Tofu"
# puts person1.first_name
