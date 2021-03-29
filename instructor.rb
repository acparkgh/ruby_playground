require 'pry'

class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def join_school(school)
    SchoolInstructor.add_school_instructor(school, self)    
  end

  def self.new_instructor(instructor, school)
    new_instructor = Instructor.new(instructor)
    new_instructor.join_school(new_school)
  end

  def schools
    SchoolInstructor.all.select do |si|
      si.instructor == self
    end.collect do |si|
      si.school.name
    end
  end

  

end