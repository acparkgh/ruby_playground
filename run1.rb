require 'bundler'
Bundler.require

class Pet

attr_accessor(:age, :gender, :name, :species)
   
  @@all = []
  
  def initialize(age, gender, name, species)
    @age = age,
    @gender = gender
    @name = name
    @species =species
    @@all << self
  end
  
  def self.all
    @@all
  end

  def triple_age
    multiplier = 3
    @new_age = self.age * multiplier
    binding.pry
    # @new_age = @age * multiplier
  end

end

fido = Pet.new(10, "male", "Fido","canis")


# dog = Pet.new("Garfield", 15)

binding.pry