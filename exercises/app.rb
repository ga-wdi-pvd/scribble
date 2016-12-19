require "pry"

class User
# attr_accessor allows you to access the values
  attr_accessor :firstname, :lastname
  def initialize(firstname, lastname)
    puts "I'm a new User named #{firstname} #{lastname}"
  end
  binding.pry
puts "end of file"
end
