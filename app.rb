require 'pry'

class Cat

  attr_accessor :name, :flufiness

  def meow
    puts "Meow meow I am a pretty cat"
  end

  # def set_flufiness(cat_fluffniss)
  #   @flufiness = cat_fluffniss
  # end

  # def flufiness=(cat_flufiness)
  #   @flufiness = cat_flufiness
  # end

  # def flufiness
  #   return @flufiness
  # end

  # def name= (name)
  #   @name = name
  # end

  # def name
  #   @name
  # end

  def introduce
    puts "Hi, my name is #{@name}."
  end

end

petey = Cat.new  # petey is an instance of "Cat" class
garfield = Cat.new


petey.meow

binding.pry