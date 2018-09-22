### Builder Design Pattern
The Builder design pattern is aimed at separating the construction of complex object from its representation so that the same construction process can create different representations. 

The Builder pattern encapsulates the construction logic of complex objects in its own class. It defines an interface to configure the object step by step, hiding the implementation details.

Now, the key thing to the Builder Pattern, which differentiates it from the Factory pattern, is it’s purpose. The Builder pattern is used to apply any sort of configuration on object creation.

This pattern also allows finer control over the object creation. Via the builder’s interface we create an uniformed way of object creation, instead of dealing with complex flows of creating an object (which often can be a composite).

##### What problem does it solve
- How can a class create different representation of a complex object?
- How can a class that includes creating a complex object be simplified?

##### Solutions
- Encapsulate creating and assembling the parts of a complex object in a separate builder object.
- A class delegate object creation to a `Builder` instead of creating the object directly.

##### Example code in ruby
[Here](without_builder_pattern.rb) is a ruby class showing how a complex object is created without the builder pattern and also the same class using the builder design pattern [here](builder_design_pattern.rb)

##### Magic Methods
We can build better builders that are elegent by using `magic methods`. Magic methods makes use of `method_missing` to parse to see if it matches the pattern of your magic method name.


##### Advantages of using Builder pattern
- It helps if you are doing some configuration heavy lifting when creating objects.

##### Real Life Application
The `MailFactory` gem is a classical example of an object built using the Builder Design Pattern.


