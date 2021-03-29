class School

  
  attr_reader :school, :instructor, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_instructor(instructor)
    # SchoolInstructor.new(self, instructor)
    SchoolInstructor.add_school_instructor(self, instructor)
  end

  def instructors
    selfSI = SchoolInstructor.all.filter do |si|
      si.school == self
    end
    # selfSI.map do |si|
    #   si.instructor.name
    # end
  end

  def self.find_by_name(school_name)
    School.all.find do |school|
      school.name = school_name
    end
  end

end