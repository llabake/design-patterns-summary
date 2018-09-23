### Composite Design Pattern
According to wikipedia, The composite pattern describes a group of objects that is treated the same way as a single instance of the same type of object. Composite pattern is a pattern that suggests that we build up bigger objects from small sub-objects, which might themselves be made up of still smaller sub-sub-objects.

Composite patterns usually have a `Base` class, `Leaf` and also `Composite` classes.

The `Base` class is supposed to serve as the common interface which all other object will have in common.

The `Leaf` class are usually simple, indivisible building blocks of the process. The `Leaf` class should implement the component interface.

The `Composite` class is usually the higher level class. The `Composite` class is a higher level component and is made up of sub-component. `Composites` are just complex task made up of sub-tasks.


##### The Intent
> Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of object uniformly.

##### The Problem it tries to solve
- A part-whole hierarchy should be represented so that clients can treat part and whole objects uniformly.
- A part-whole hierarchy should be represented as tree structure.

##### The solution
- Come up with a way to manipulate the primitive and composite objects uniformly
- Define a unified Component interface for both part (`Leaf`) objects and whole (`Composite`) objects.
- Individual `Leaf` objects implement the `Component` interface directly, and `Composite` objects forward requests to their child components.

##### Example code in ruby
[Here]() is an example code which briefly explains the composite design pattern. We are trying to build a music app that allows us to Add Albums, Songs and Discography. The `MusicComponent` class is the base component class while the `Album`, `Song` and `Discography` classes are the `Leaves`.

##### Abuse of the composite pattern
The error that crops up so frequently with the Composite pattern is assuming that the tree is only one level deep i.e. assuming that all of the child components of a composite object are, in fact, leaf objects and not other composites.

##### Uses of Composite Pattern
Most GUI Interfaces makes use of this pattern. They support use of different components to build up the main object or application. Each of these component have an underlying similarity i.e `background-color`, `font-size`, `foreground-color`, `width`, `height` etc.
