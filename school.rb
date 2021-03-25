class School

  attr_accessor(:name, :instructors)
  attr_reader 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
   
  # def add_instructor(instructor)
  #   instructor.join_school(self)
  # end

  def add_instructor(instructor)
    # binding.pry
    instructor.school= (self)
  end

  def instructors
    Instructor.all.select do |instructor|
      instructor.school == self
    end
  end

  def self.find_by_name(school_name)
    School.all.find do |school|
      binding.pry
      school.name = school_name
    end
  end

end