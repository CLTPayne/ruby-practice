=begin
# Making a new method available on an existing builtin Ruby class.

class String
  def shoutify
    puts "#{self.upcase}!"
  end
end

"hello world".shoutify
"I love you Mads".shoutify

# Create a new class. As .new is availble on Class can do:

Dog = Class.new
# But then the method is not nested inside and you still need to define methods on the class.

# So can do:

Dog = Class.new

class Dog
  def bark
    puts "Woof"
  end
end

# But you also don't need to actually write Dog = Class.new as if the new class you want doesn't exist, Class will just create a new instance then and there.
# Eg this works for simple instructions:

class Dog
  def bark
    puts "Woof!"
  end

  def lie_down
    puts "*The dog is lying down*"
  end
end

fido = Dog.new
fido.bark
fido.lie_down

# For more complicated processes:

class Dog
  def bark
    return "Woof!"
  end

  def colour=(colour)
    # This saves the colour property that's passed in as an arguement to colour= method in the ojbect state (which is each Dog)
    # To save things in the object state, that's when you use an instance variable.
    @colour = colour
  end

  def observe
    puts "You see a #{@colour} dog."
  end
end

fido = Dog.new
fido.colour = "brown"
fido.observe

chelsea = Dog.new
chelsea.colour = "white"
chelsea.observe



# Another example of this kind of activity:
# First - define a Person class with some methods:
class Person
  def name(name) # Name is a parameter here so doens't matter what it's called.
    @my_name = name
  end

  def introduce
    puts "Hello, I'm #{@my_name}"
  end
end

# Second - assign a new instance of Person to the variable woman.
woman = Person.new
# Third - set the property @my_name on the Person instance referenced by woman to a new string, "Yasmin". This is called a setter method, as all it does is set the object state using the instance variable.
woman.name("Yasmin")
# or can do woman.name = "Yasmin"
# Forth - call the introduce method on the Person instance referenced by woman, which returns a string, "Hello, I'm Yasmin".
woman.introduce



class Robot
  def legs=(number_of_legs)
    @legs = number_of_legs
  end
  # Changing the @legs property of the Robot instance we create outside of the class (we made one defined as robot below)
  def add_leg
    @legs += 1
  end

  def walk
    puts "I'm walking on my #{@legs}!"
  end
end

robot = Robot.new
robot.legs = 4

robot.add_leg
robot.add_leg

robot.walk

=end

# But Classes also have an initialize function built in - Ruby automatically defines it in a Class even when we don't writ it. Initialize runs when ever we use .new on a class.

# So you .new on a class, that class:
# First builds an object
# Second runs the method initialize on it.
# Therefore you can store info about the object as a part of the object's state (as a property of the object) via changing the default initialize method.
# Every arguement of the .new is passed to the initialize function in the class.

# E.g (no setter method needed:)

class Dog
  def initialize(colour)
    @colour = colour
  end

  def observe
    puts "You see a #{@colour} dog."
  end
end

fido = Dog.new("brown")
fido.observe

class Person
  def initialize(name)
    @name = name
  end

  def introduce
    puts "Hello, I'm #{@name}"
  end
end

woman = Person.new("Helen")
woman.introduce

class Robot
  def initialize(number_of_legs)
    @number_of_legs = number_of_legs
  end

  def add_leg
    @number_of_legs += 1
  end

  def walk
    puts "I'm walking on my #{@number_of_legs} legs!"
  end
end

robot = Robot.new(5)
robot.add_leg
robot.add_leg
robot.walk

# Can also provide multiple parameters for an initialize method.
# E.g.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "Hello, I'm #{@name}, and I'm #{@age.to_s} years old."
  end

  def get_older
    @age += 1
  end
end

mads = Person.new("Mads", 33)
mads.get_older
mads.introduce

# Instance variables (these @name, @age, @legs) can only be seen / used by the object they are inside. So not the class, but the object you've created of that type of class object.

# Can also initialize arrays inside a class
# E.g.

class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    @hangar.push(plane)
  end

  def take_off(plane)
    if @hangar.length > 0
      if @hangar.include? plane
        plane_index = @hangar.index(plane)
        @hangar.delete_at(plane_index)
        return plane
      else
        puts "Error: plane not in hangar"
      end
    else puts "Error: there are no planes to take off"
    end
  end

  def hangar_report
    if @hangar.length == 1
      puts "There is 1 plane in the hangar"
    else
      puts "There are #{@hangar.length} planes in the hangar"
    end
  end
end

class Plane
end

gatwick = Airport.new
my_special_plane = Plane.new
gatwick.land(my_special_plane)
gatwick.hangar_report
gatwick.take_off(my_special_plane)
gatwick.hangar_report
