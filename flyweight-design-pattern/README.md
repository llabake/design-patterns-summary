### Fly-Weight Design Pattern
A Flyweight is a shared object that can be used in multiple contexts simultaneously, while acting as an independent object in each context. Within the context of an applied Flyweight pattern, each occurrence of a particular object will refer to the same instance in a shared pool of Flyweight objects.

##### The Intent
> Use sharing to support large numbers of fine-grained objects efficiently.

##### The problem it solves
- Large numbers of objects should be supported efficiently.
- Creating large numbers of objects should be avoided.

##### The solution it provides
Define `Flyweight` objects that

- store intrinsic (invariant) state that can be shared and
- provide an interface through which extrinsic (variant) state can be passed in.

This enables clients to
- reuse (share) Flyweight objects (instead of creating a new object each time) and 
- pass in extrinsic state when they invoke a Flyweight operation.

This greatly reduces the number of physically created objects. 
Intrinsic state is invariant (context independent) and therefore can be shared (for example, the code of character 'A' in a given character set). 
Extrinsic state is variant (context dependent) and therefore can not be shared and must be passed in (for example, the position of character 'A' in a text document). 

##### Example code in ruby
###### Flyweights:
A Flyweight is a shared object that can be used in multiple contexts simultaneously, while acting as an independent object in each context. Within the context of an applied Flyweight pattern, each occurrence of a particular object will refer to the same instance in a shared pool of Flyweight objects.

###### Flyweight state:
A Flyweight has both intrinsic and extrinsic state. Intrinsic state is stored in the Flyweight object itself. Extrinsic state is stored in any number of Flyweight Context objects, which can be used to decorate the Flyweight object with additional state information. In this way, a Flyweight can be decorated with additional information for use within a specific context, while also remaining sharable across multiple other contexts. That is because while the extrinsic state applied to a Flyweight might change, the intrinsic state, controlled by the Flyweight itself, is constant and immutable; the intrinsic state of the Flyweight never changes.

###### Flyweight factories:
Because Flyweights must be shared, it is important to constrain the creation and management of them to a given entity. Within the Flyweight pattern, that entity is the Flyweight Factory. To be clear, the Flyweight Factory is responsible for the creation and management of Flyweight objects. The Client in the Flyweight pattern must use the Flyweight Factory in order to create and use the shared Flyweight objects. The Client must never create Flyweight objects directly.

- The Flyweight class, `Character` is responsible for defining and maintaining the intrinsic state of a character flyweight object.
- The `CharacterFactory` class acts as a Flyweight Factory. In accordance with the Flyweight Pattern, we will use the `CharacterFactory` to create and manage flyweight objects, as well as to ensure that flyweights are shared properly.
- A pool is initialized. `Characters`, on initialization, will be added to the pool. When the same character is requested again, a "shared" instance of the character, stored in the pool, will be returned.
- When a character is retrieved from the character pool, then that character will be used to create a Character class. The Character class will then be added to the pool of shared flyweight objects. However, if the character which is requested is not currently in the pool, then the `find_character` method will first initialize a new Character instance, add it to the shared pool, then return that Character instance.
- The `create_character` method is used by the `find_character` method to create manage the creation of new Character instances. The method is private, as we don't wish for clients to use this method directly.

##### Gotchas
###### When to use the Flyweight pattern
Flyweights should be used to model concepts of entities that are normally too plentiful to represent with objects.

According to the GoF, one should apply the Flyweight pattern where all of the following are true:

- An application uses a large number of objects.
- Storage costs are high because of the sheer quantity of objects.
- Most object state can be made extrinsic.
- Many groups of objects may be replaced by relatively few shared objects once extrinsic state is removed.
- The application doesn’t depend on object identity. Since flyweight objects may be shared, identity tests will return true for conceptually distinct objects.

###### Don’t instantiate flyweights directly
Always remember that it is the responsibility of the Flyweight Factory to instantiate and manage flyweights. A client should invoked the Flyweight Factory wherever the creation of flyweights is required.