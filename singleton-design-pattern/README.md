### Singleton Design Pattern
In the Singleton pattern, the class of the singleton object should manage the creation of its sole instance. It should control access to its sole instance. And whenever the singleton object is desired, a class method should be invoked.
##### The Intent
> Ensure a class only has one instance, and provide a global point of access to it.

its intent is also to model an object which occurs exactly once in a system. Unlike a global variable, it is not meant to be used as a method of globally connecting parts of a program and communicating between them, nor should it be used that way. Creating such communication across disparate pieces of software will create a tight coupling amongst those pieces. That is bad, and indeed, that is an anti-pattern. That is why global variables are almost universally feared.

##### Problem it solves
- It is useful when you need that instance to be accessible in different parts of the application.
- It is also useful when you are communication with external systems
- And also for database access.

##### Example code in Ruby
[Here](singleton_pattern.rb) is an example code for a simple logger in ruby

[Here](singleton_pattern_with_module.rb) is also an example code of how we might use ruby's module together with any class to make it a singleton

##### Application of Singleton Pattern in Rails
- Used in Rails `ActiveSupport::Inflector::Inflections` class
- Used in rails `before_action` method in `ApplicationController` class
