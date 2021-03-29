require 'bundler'
Bundler.require

class SchoolInstructor

attr_reader :school, :instructor

  @@all = []

  def initialize(school, instructor)
    @school = school
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

  def self.add_school_instructor(school, instructor)
    SchoolInstructor.new(school, instructor)
  end

end