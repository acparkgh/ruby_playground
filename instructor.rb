class Instructor

  attr_accessor :name
  attr_reader :school

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def join_school(school)
    
    @school = school
  end

  def school_name
    self.school.name
  end
  

end