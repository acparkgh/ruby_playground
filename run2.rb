require 'bundler'
Bundler.require

class Pet

attr_accessor(:age, :gender, :name, :species)
   
  @@all = []
  
  def initialize(age, gender, name, species)
    @age = age
    @gender = gender 
    @name = name 
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end

end

fido = Pet.new(10, "male", "Fido","canis")
binding.pry