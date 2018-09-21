#### Abstract Factory Method
The abstract factory pattern provides a way to encapsulate a group of individual factories that have a common theme without specifying their concrete classes. In normal usage, the client software creates a concrete implementation of the abstract factory and then uses the generic interface of the factory to create the concrete objects that are part of the theme. The client does not know (or care) which concrete objects it gets from each of these internal factories, since it uses only the generic interfaces of their products. This pattern separates the details of implementation of a set of objects from their general usage and relies on object composition, as object creation is implemented in methods exposed in the factory interface.

##### The intent

According to the GoF, the intent of the Abstract Factory pattern is to:

> Provide an interface for creating families of related or dependent objects without specifying their concrete classes.”

The abstract factory pattern is somewhat similar to the **Strategy Pattern** in terms of object creation. The Abstract Factory pattern aids in the creation of sets of compatible objects which can be swapped out for one another.

##### Problem it solves
- How to build a system which should remain independent of how its objects are created, composed, and represented.
- When a related families of objects are created and designed to be used together and you need to enforce that design.
- Helps if concealing the implementation of the families of an object but show/reveal its interfaces.

##### Benefits
- It makes it easier to make create and manage families of objects.
- Makes it easy to exchange one family of object with another as they share the same interface.
- It also promotes consistency across the product families leading to a more rigid and pleasing design.

##### Examples Problem in Ruby
Take a look at an example application we are trying to build for a small pond where we can specify the type of animal and plant it would have. The code shown [here](pond.rb) describes what it would look like initially
Trying to apply the `Factory Method` pattern to this problem would get us to this solution found [here](factory_pattern.rb). A problem arises when we want to extend this application to be able to create not just a pond or jungle but to create a Habitat with also put the right animals and plants in them.

It helps us to create factories for families of object that are related and while also providing a way for the main application to not know the process that goes in creating those objects.

One problem with our new Habitat class is that it is possible to create incoherent (not to mention ecologically unsound) combinations of fauna and flora. For instance, nothing in our current habitat implementation tells us that tigers and lily pads do not go together.

We can deal with this problem by changing the way we specify which creatures live in the habitat. Instead of passing the individual plant and animal classes to Habitat, we can pass a single object that knows how to create a consistent set of products. We will have one version of this object for ponds, a version that will create frogs and lily pads. We will have a second version of this object that will create the tigers and trees that are appropriate to a jungle. An object dedicated to creating a compatible set of objects is called an abstract factory.

[Here](abstract_factory_pattern.rb) is the final implementation for solving this problem using the `Abstract Factory Method` of design pattern.
