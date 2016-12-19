require "pry"
# class Group
# attr_accessor :people
#
#   def initialize(initial_people =[])
#     @people = initial_people
#   end
#
#   def add_person(person)
#     @people.push(person)
#   end
# end
class Person
  attr_accessor:name
  attr_reader:age
  @@people = []
  @@class_name = "Person"
  def initialize(name, age)
    @name = name
    @age = age
    @@people.push(self)
  end
  def say_name
    puts "Hi my name is #{@name}"
  end
  def say_age
    puts "I am #{@age} years old"
  end
  def get_class_name
    puts @@class_name
  end
  def self.get_people
    return @@people
  end
end
class LoudPerson<Person
  @@class_name = "LoudPerson"
    def say_name
      puts "HEY YOU, MY NAME IS #{@name.upcase}"
    end
    def get_class_name
      puts @@class_name
    end
end
class QuietPerson<Person
  def say_name
    puts "(whisper)hey, my name is #{@name.downcase}"
  end
end
class VeryLoudPerson<LoudPerson
  # def say_name
  #   LoudPerson.say_name
  # end
  def say_age
    puts "HEY, IM VERYLOUD AND #{@age} YEARS OLD"
  end
end
class TwoHeadedPerson < Person
  def initialize(name, second_name, age)
    super(name, age)
    @second_name = second_name
  end
  def say_name
    puts "I am #{@name} and #{@second_name}"
  end
end
  # def check_age
  #   if self.age < 18
  #     puts "Come back when your 18"
  #   else
  #     puts "You can vote"
  #   end
  # end
  #
  # def number_of_people
  #   puts @@people.length
  #   return @@people.length
  # end
  #
  # def self.compare_age(person1, person2)
  #   if person1.age>person2.age
  #     return "#{person1.name} is older"
  #   else
  #     return "#{person2.name} is older"
  #   end
  # end
binding.pry
