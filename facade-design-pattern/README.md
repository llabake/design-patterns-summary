### Facade Design Pattern
According to [wikipedia](https://en.wikipedia.org/wiki/Facade_pattern), a facade is an object that serves as a front-facing interface masking more complex underlying or structural code. A facade can:

- Improve the readability and usability of a software library by masking interaction with more complex components behind a single (and often simplified) API.
- Provide a context-specific interface to more generic functionality (complete with context-specific input validation).
- Serve as a launching point for a broader refactor of monolithic or tightly-coupled systems in favor of more loosely-coupled code.

##### The Intent
> Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.

##### Problem it solves
- To make a complex subsystem easier to use, a simple interface should be provided for a set of interfaces in the subsystem.
- The dependencies on a subsystem should be minimized.

##### Solution it provides
- Implements a simple interface in terms of (by delegating to) the interfaces in the subsystem.
- May perform additional functionality before/after forwarding a request.

##### Example code in ruby
[Here](texty_facade.rb) is a class that makes use of facade to create a common interface for performing quesry in an application.
[Here](checkout.rb) is another snippet of a `one-click checkout system` making use of the `Facade pattern`.

##### Gotchas
A `Facade` is not meant to offer up every possible operation of the underlying subsystem. It is meant to cover the most common operations. If a client needs a more customizable interface, that specific client can go deeper. It’s important that a facade does not become overly long or complex, as such factors will diminish many of the benefits of the Facade pattern. As a general rule, however, reaching below the facade is not recommended.