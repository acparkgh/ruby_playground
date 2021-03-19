require 'pry'

class Cat

  @@everyPet = []

  attr_accessor :name, :flufiness
  attr_reader :gender, :species, :age

  def initialize(species, gender, name)
    @species = species 
    @gender = gender 
    @age = 1
    @color = "white"
    @name = name
    # @@everyPet << self
    self.class.all_pets << self
  end

  def self.all_pets
    @@everyPet
  end

  def self.find_pet(pet_name)
    self.all_pets.find { |pet| pet.name === pet_name }
  end

  def say_what=(hotdog)
    @name = hotdog
  end

  def meow
    puts "Meow meow I am a pretty cat"
  end

  def introduce
    puts "Hi, my name is #{@name}."
  end



end

petey = Cat.new("cat", "male", "Bob")  
garfield = Cat.new("dog", "female", "Dan")


petey.meow

binding.pry