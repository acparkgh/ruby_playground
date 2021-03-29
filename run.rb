require 'pry'
require_relative './school.rb'
require_relative './instructor.rb'
require_relative './school_instructor.rb'

bayside = School.new("Bayside High")
flatiron = School.new("Flatiron School")

shannon = Instructor.new("Shannon Nabors")
andrew = Instructor.new("Andrew Park")
andrew.join_school(flatiron)

bob = Instructor.new("Bob")
bob.join_school(bayside)
flatiron.add_instructor(shannon)

shannon.schools

binding.pry
