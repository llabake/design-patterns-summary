### The Docorator Design Pattern
According to [Wikipedia](https://en.wikipedia.org/wiki/Decorator_pattern), The decorator pattern is a design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of other objects from the same class. The decorator pattern is often useful for adhering to the Single Responsibility Principle, as it allows functionality to be divided between classes with unique areas of concern. The decorator pattern is structurally nearly identical to the chain of responsibility pattern, the difference being that in a chain of responsibility, exactly one of the classes handles the request, while for the decorator, all classes handle the request.

Decorators allow us to add behavior to objects without affecting other objects of the same class. The decorator pattern is a useful alternative to creating sub-classes.

Decorators are a useful approach in cases where the objects have different types of behavior that can be combined in many ways.

 A decorator might also add operations to an existing operation on the object as it forwards the request along to the enclosed object.

##### The Intent
> Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

##### The Problem it tries to solve
- Adding responsibilities to (and removed from) an object dynamically at run-time.
- Providing a flexible alternative to subclassing for extending functionality.

##### Solution it provides
- Implement the interface of the extended (decorated) object (`Component`) transparently by forwarding all requests to it.
- Perform additional functionality before/after forwarding a request.

##### Examples of code in ruby
We want to build an application that helps a shop take order for burgers. One good thing about it is that the user can make different order for different type of burgers,
[Here](burger.rb) is the code that makes use of the decorator pattern.
[Here](burger_with_module_decorator.rb) is the code making use of decorator pattern with modules.
[Here](burger_with_decorator.rb) is the code making use of subclasses

##### Misuse of Decorator pattern
- One thing to keep in mind when implementing the Decorator pattern is that you need to keep the component interface simple. You want to avoid making the compo- nent interface overly complex, because a complex interface will make it that much harder to get each decorator right.
- Another potential drawback of the Decorator pattern is the performance over- head associated with a long chain of decorators.
- Finally, one drawback of the method-aliasing technique for decorating objects is that it tends to make your code harder to debug. Think about it: Your methods will show up in the stack trace with different names than they have in the code stored in your source files.

##### Difference between Decorators and Composite
A decorator and its enclosed component are not identical, and cannot be relied upon to be identical. A composite and a leaf within a composite tree can be treated as being identical. A decorator only has one component, whereas a composite tree has many components. The intent of a decorator is to change or add responsibilities to an object. The intent of a composite tree is to be used as a form of object aggregation.