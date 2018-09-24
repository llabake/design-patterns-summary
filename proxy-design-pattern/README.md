### Proxy Design Pattern
The proxy design pattern is a class functioning as an interface to something else. The proxy can be used to forward calls to the real object, providing additional logic (caching, checking preconditons before operations are carried out).

The Proxy Pattern is commonly used for objects that are either remote, expensive to create, or in need of securing.

##### The Intent
> Provide a surrogate or placeholder for another object to control access to it.

##### The problem it solves
- The access to an object should be controlled.
- Additional functionality should be provided when accessing an object.

##### Solutions to the problems
Define a separate `Proxy` object that
- can be used as substitute for another object (`Subject`).
- implements additional functionality to control the access to this subject.\

##### Example code in ruby
- [Protection Proxies](protection_bank_account_proxy.rb): In the `protection proxy`, a check is put in place that certifies if the client is allowed to access the method or perform the operation. In this case, the `check_permissions` method act as the protection to the other methods.
- [Virtual Proxies](virtual_bank_account_proxy.rb): In the `Virtual Proxy`, the real object is lazily instantiated when a call to any of its method is invoked if it has not been previously instantiated. Protection proxies have another advantage over the naive “implement all of the security and functionality in one class” approach. By splitting the protection cleanly off from the workings of the real object, we can minimize the chance that any important information will inadvertently leak out through our protective shield.
- [Remote Proxies](remote_bank_account_proxy.rb): The `Remote Proxy` is used when we need to communicate with a remote service which resides outside of our application. When a request comes in, the remote proxy goes through all the horror of pack- aging up the request, sending it over the network, waiting for a response, unpacking the response, and returning the answer to the unsuspecting client.

##### Gotchas
**Proxies vs decorators**: You may have noticed that a proxy sometimes uses the same implementation pattern as a decorator. In such cases, the difference between a decorator and a proxy lies in the intent. A decorator is intent on adding additional responsibilities to an object, whereas a proxy controls access to an object.

**Proxies vs adapters**: An adapter provides a different interface to the object that it adapts, whereas a proxy provides either the same interface as its subject, or a subset of the interface of its subject.
