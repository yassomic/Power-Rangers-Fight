'require pry'

module Comic

class Person
  attr_accessor :name, :caffeine_level, :strength, :color

  def initialize(name, caffeine_level, strength, color)
    @name = name
    @caffeine_level = caffeine_level
    @strength = strength
    @color = color
  end

  def self.run
    puts "The public flees at the sight of the terrorizing evil villains."
  end

  def scream
    puts "HELP!!!"
  end

  def drink_coffee
    puts "#{@name} quickly goes to the cafe for a coffee."
    puts "Energy level extended!"
    @caffeine_level += 10
  end 

  def transform
    puts "#{@name} becomes the #{@color} ranger!"
  end

  def use_megazord
    if @strength >= 5000
      puts "#{@name} defeated the villains with a megazord!!!"
    end
  end

  def punch(person)
    puts "#{@name} punched #{person}!"
    @caffeine_level -= 1
    if @strength >= 5
    puts "#{person} was punched by #{@name} and hid to recover."
    else
      puts "#{person} declares, you are no match for me!"
    end
  end

  def rest
    puts "I need a break..."
  end
end

class EvilNinja < Person

  def cause_mayhem(person)
    person.caffeine_level = 0
  end

  def self.fight_scene
    puts "The rangers and villains battle."
  end
end
end

villain1 = Comic::Person.new('Tormento', 10, 10, nil)
villain2 = Comic::Person.new('Charmander', 20, 20, nil)
red_ranger = Comic::Person.new('Jason', 10, 4, 'red')
white_ranger = Comic::Person.new('Zack', 15, 5000, 'white')
Comic::Person.run
red_ranger.drink_coffee
red_ranger.transform
white_ranger.transform
puts red_ranger.caffeine_level
puts red_ranger.strength
puts white_ranger.strength
puts white_ranger.caffeine_level
Comic::EvilNinja.fight_scene
villain1.punch('Zack')
villain2.punch('Jason')
red_ranger.punch('Tormento')
puts "Red Ranger caffeine level down to #{red_ranger.caffeine_level}"
white_ranger.use_megazord










