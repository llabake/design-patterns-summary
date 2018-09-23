class Pizza
  attr_reader :name, :toppings, :state

  def initialize(name, toppings)
    @name = name
    @toppings = toppings
    @state = 'raw'
  end

  def bake
    puts "Baking #{name} ..."
    @state = 'baked'
  end
end

class PizzaStore
  attr_accessor :pizza_prototype_collection

  def initialize
    @pizza_prototype_collection = {}
  end

  def take_order(pizza_type)
    pizza_prototype = pizza_prototype_collection[pizza_type]
    raise 'unsupported pizza type' unless pizza_prototype

    pizza = pizza_prototype.clone
    pizza.bake
    pizza
  end
end

store = PizzaStore.new
chicken_suya_pizza_prototype = Pizza.new('Chicken Suya Pizza', %w(suya chicken mushroom))

store.pizza_prototype_collection['chicken_suya'] = chicken_suya_pizza_prototype

chicken_suya_pizza = store.take_order('chicken_suya')
