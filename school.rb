class School

  attr_accessor 
  attr_reader :school

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def join_school(school)
    @school = school
  end

  def name(name)
    @name = name
  end

  def name
    @name
  end

  def self.all
    @@all
  end
   
  # def school
  #   return @school
  # end

end