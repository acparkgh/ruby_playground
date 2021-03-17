require 'pry'

class Cat

  attr_accessor :name, :flufiness

  def initialize(species, gender)
    @species = species 
    @gender = gender 
    @age = 1
    @color = "white"
  end

  def sayWhat=(hotDog)
    @name = hotDog
  end

  def meow
    puts "Meow meow I am a pretty cat"
  end

  def introduce
    puts "Hi, my name is #{@name}."
  end

end

petey = Cat.new("cat", "male")  
garfield = Cat.new("dog", "female")


petey.meow

binding.pry