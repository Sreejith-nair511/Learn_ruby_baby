Good way of me to learn ruby 

Ruby is a dynamic, object-oriented programming language known for its simplicity and productivity. It was created by Yukihiro "Matz" Matsumoto in the mid-1990s and is designed to be easy to read and write while maintaining powerful features.

🔹 Key Features of Ruby:
Object-Oriented – Everything in Ruby is an object, including primitive data types.
Dynamic & Interpreted – No need for compilation; it runs directly in an interpreter.
Easy to Read & Write – Uses a clean and elegant syntax, often compared to natural language.
Metaprogramming – Ruby allows modifying classes and methods at runtime.
Garbage Collection – Handles memory management automatically.
Duck Typing – Type checking is done at runtime based on behavior rather than explicit type declarations.
Rich Standard Library – Comes with a strong set of built-in modules and classes.
Community & Gems – Extensive libraries (gems) make development faster and easier.

Common Uses:
Web Development → With frameworks like Ruby on Rails (Rails), it's a popular choice for startups and scalable web applications.
Automation & Scripting → Used for DevOps, automation scripts, and system administration.
Data Processing → Employed in various data-driven applications.
Game Development → Though not mainstream, Ruby has libraries like Gosu for 2D game development.

puts "Hello, world!"  # Simple output

# Defining a class
class Person
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hello, my name is #{@name}!"
  end
end

p = Person.new("Sreejith")
p.greet

rb extesnion 
