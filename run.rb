require 'pry'
require_relative './school.rb'
require_relative './instructor.rb'

# puts "hello world!"

bayside = School.new("Bayside High")
flatiron = School.new("Flatiron School")

shannon = Instructor.new("Shannon Nabors")
flatiron.add_instructor(shannon)
andrew = Instructor.new("Andrew Park")
andrew.school= (bayside)

flatiron.instructors


puts shannon.school == flatiron

School.find_by_name("Bayside High") == bayside

binding.pry
