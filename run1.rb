require 'bundler'
Bundler.require

class Pet

attr_reader(:new_age)
   
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
    binding.pry
  end
  
  def self.all
    @@all
  end

  def name= (name)
    @name = name
  end

  def name
    @name
  end
  
  def triple_age
    multiplier = 3
    @new_age = self.age * multiplier
    binding.pry
    # @new_age = @age * multiplier
  end

  def age= (age)
    @age = age
  end

  def age
    @age + 1
  end

end

cat = Pet.new("Fido", 10)
dog = Pet.new("Garfield", 15)

binding.pry