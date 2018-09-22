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
  def take_order(pizza_type)
    case pizza_type
    when 'pepperoni'
      pizza = Pizza.new('Pepperoni Pizza', ['pepperoni', 'shredded mozzarella cheese'])
    when 'chicken'
      pizza = Pizza.new('Chicken Pizza', ['chicken', 'mushroom', 'spinach'])
    else
      pizza = Pizza.new('Cheese Pizza', ['cheese'])
    end
    pizza.bake
    pizza
  end
end
