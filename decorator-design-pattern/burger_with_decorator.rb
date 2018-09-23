class Burger
  def cost
    50
  end
end

class LargeBurger
  def initialize(burger)
    @burger = burger
  end

  def cost
    @burger.cost + 15
  end
end

burger = Burger.new
large_burger = LargeBurger.new(burger)
extra_large_burger = LargeBurger.new(large_burger)

puts large_burger.cost
puts extra_large_burger.cost

# # # # # # # # # # # # # # # # #
#                               #
# Using Ruby's SimpleDelegator  #
#                               #
# # # # # # # # # # # # # # # # #


class BurgerDecorator < SimpleDelegator
  def initialize(burger)
    @burger = burger
    super
  end

  def with_fries
    puts 'Adding Fries to burger order'
  end

  def cost
    @burger.cost + 5
  end
end

new_burger = BurgerDecorator.new(extra_large_burger)
puts new_burger.cost
