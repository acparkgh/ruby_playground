require 'bundler'
Bundler.require

class Subject

  attr_accessor :database, :web_framework, :css_library, :language

  @@all = []

  def initialize(database, web_framework, css_library, language = "javaScript")
    @language = language,
    @database = database, 
    @web_framework = web_framework,
    @css_library = css_library
  end

  def self.all
    @@all
  end  

end

myskills = Subject.new("PostgreSQL", "React", "Bootstrap")
binding.pry
