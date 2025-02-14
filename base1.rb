puts "Hello, World!"

name = "Sreejith"  # String
age = 25           # Integer
height = 5.9       # Float
is_student = false # Boolean

puts "My name is #{name}, I am #{age} years old."
def greet(name)
    puts "Hello, #{name}!"
  end
  
  greet("Sreejith")
  age = 18

  if age >= 18
    puts "You are an adult."
  else
    puts "You are a minor."
  end
# For loop
(1..5).each do |i|
    puts "Number: #{i}"
  end
  
  # While loop
  count = 0
  while count < 3
    puts "Count: #{count}"
    count += 1
  end
# Array
fruits = ["Apple", "Banana", "Cherry"]
puts fruits[1]  # Banana

# Hash (Key-Value Pair)
person = {name: "Sreejith", age: 25, city: "Bangalore"}
puts person[:name]  # Sreejith
class Person
    attr_accessor :name, :age  # Allows read/write access
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def introduce
      puts "Hi, I'm #{@name} and I'm #{@age} years old."
    end
  end
  
  p1 = Person.new("Sreejith", 25)
  p1.introduce
      