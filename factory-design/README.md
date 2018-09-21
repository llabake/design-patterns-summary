### Factory Design

Factory Design pattern is a pattern that allows one to create objects without having to specify the exact class of the object that will be created. This is done by creating a factory method - either specified in an interface or implemented by the child classes, or implemented in a base class.
The factory method pattern relies on inheritance, as object creation is delegated to subclasses that implement the factory method to create objects.
According to the Gang of Four (GoF), they defined the Factory Design Pattern as 


> Define an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.

A Factory Design pattern is almost related to the Template Design Pattern as applied to the problem of object creation. A factory method differs from the Template method in that it is explicitly responsible for manufacturing the object. If it is does not manufacture an object then it is not a factory method.

The Factory Method pattern helps us to conform to the Open-Closed Principle: “Software entities should be open for extension, but closed for modification.”

Factory Method Pattern is used when you have a class that can not anticipate the class of object it must create or when you want your subclasses to specify which objects should be created.

Factory Method Pattern also makes use of the `Open/Closed Principle` of `SOLID` object-oriented design.

##### Problem it solves

- How can an object be created so that subclasses can redefine which class to instantiate?
- How can a class defer instantiation to subclasses?

##### Examples in Ruby
We want to create a `ReportGenerator` class that prints report in various format. [Here](document_generator.rb) is the code written in before the factory method pattern is applied.

After applying the factory the method, we are able to add extend the functionality of the class without modifying the class by using the factory method pattern.
[Here](factory_pattern.rb) is the refactored code using the factory method pattern.

The `Formatter.for` method serves as the `factory method` that tells `ReportGenerator`  which class to instantiate and which report format to print in. This patterns makes creation of new format classes easy and we do not need to modify the `ReportGenerator` class. All we need to do is to just add the new class check in the `Formatter` class factory method and there we have it. 
