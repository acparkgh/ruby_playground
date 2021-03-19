require 'pry'

class Person

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def self.create(name)
    person = self.new
    person.name = name
    # binding.pry
    self.all << person
    # Person.all << person
    # @@all << person
  end
  # binding.pry

  def ageq(age)
    @age = age
  end

  def age
    @age
  end

end

Person.create("Andrew")
Person.create("Garfield")

binding.pry