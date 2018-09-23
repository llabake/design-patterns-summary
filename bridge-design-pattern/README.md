### Bridge Design Pattern
The Bridge pattern is a method that is used to separate an Abstraction from its implementation so that the two can exist independent of each other. It uses `Encapsulation`, `Aggregation` and can also use `Inheritance` to separate responsibilities into different classes.

The bridge pattern is often confused with the adapter pattern. In fact, the bridge pattern is often implemented using the object adapter pattern.

The Bridge pattern and the Adapter pattern are similar, however they differ in their intent. An adapter is used to change the interface of an existing interface, whereas a bridge is used to separate an interface from its implementation at the onset of a new interface design. Put simply, a bridge makes code work before its designed. An adapter makes code work after its designed.

##### The Intent
> Decouple an abstraction from its implementation so that the two can exist independently. A bridge is used to separate an interface from its implementation at the onset of a new interface design.

##### Problem it solves
- An abstraction and its implementation should be defined and extended independently from each other.
- A compile-time binding between an abstraction and its implementation should be avoided so that an implementation can be selected at run-time.

##### Solution it brings
- Separate an abstraction (`Abstraction`) from its implementation (`Implementor`) by putting them in separate class hierarchies.
- Implement the `Abstraction` in terms of (by delegating to) an `Implementor` object.

##### Uses
- Use a bridge for flexible, long-lived interfaces: If you want to be able to change the abstraction as well as the implementation of a given class structure, without impacting the usage of a client, then a bridge may be in order.
- Use a bridge for dynamic coupling: Given a situation in which you want to be able to couple a given abstraction to a given implementation dynamically, the Bridge pattern might be a proper solution.
- Use a bridge for dual hierarchies: In cases where both an abstraction and its implementation should be extendable through inheritance, a bridge is an excellent design choice. With a bridge, a separate hierarchy of abstractions can be maintained alongside a hierarchy of implementations.

##### Example code in Ruby
By implementing a bridge, an abstraction and its implementations can vary independently from one another. In our example, the Bridge pattern is used to decouple an abstract Shape class and its various refinements from its possible implementations.
[Here](bridge_pattern.rb) is the code for that.
