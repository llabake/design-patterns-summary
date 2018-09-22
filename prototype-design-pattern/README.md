### Prototype Design Pattern
The prototype pattern specifies the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.

##### Problems it solves
- avoid subclasses of an object creator in the client application, like the factory method pattern does.
- avoid the inherent cost of creating a new object in the standard way (e.g., using the 'new' keyword) when it is prohibitively expensive for a given application.
- How can objects be created so that which objects to create can be specified at run-time?
- How can dynamically loaded classes be instantiated?

##### How it solves it?
- Define a Prototype object that returns a copy of itself.
- Create new objects by copying a `Prototype` object.

##### Examole code in ruby
A pizza application is used by a store to create pizza and also in the pizza store front the code for the application can be found [here](pizza_store_application.rb)
A problem arises when we try to make the pizza menu dynamic by adding the ability to create pizzas on the fly. [Here](pizza_store_with_prototype_pattern.rb) is a refactored application done by using the prototype pattern. The good thing about this pattern is that it allows us to create new pizza by taking the corresponding pizza prototype and clone it to make a new pizza.

In this example, the dynamic menu is the collection of pizza prototypes and the `take_order` method creates new pizza by cloning the prototype.

The keye to this pattern is that each prototype is responsible for knowing how to create a corresponding object.

##### Advantages of prototype pattern
- specify which object to created at run-time. add this code to the [file](pizza_store_with_prototype_pattern.rb) and run

```ruby
chicken_suya_prototype_v2 = Pizza.new('Advanced Chicken Suya', ['Strong Suya Flavour'])
store.pizza_prototype_collection['chicken_suya'] = chicken_suya_prototype_v2

puts store.pizza_prototype_collection
chicken_suya_pizza = store.take_order('chicken_suya')

```
- instantiate dynamically loaded class. Add this code to this [file](pizza_store_with_prototype_pattern.rb) and run
```ruby
class Croissant
  def bake
    puts 'Baking a Croissant ...'
  end
end

croissant_prototype = Croissant.new
store.pizza_prototype_collection['croissant'] = croissant_prototype

croissant = store.take_order('croissant')

```
