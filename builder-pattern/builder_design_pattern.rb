require_relative './without_builder_pattern'

class SmartphoneBuilder
  def initialize
    @smartphone = Smartphone.new
  end

  def set_model(model)
    @smartphone.model = model
  end

  def add_processor(speed)
    @smartphone.cpu = CPU.new(speed)
  end

  def add_touchscreen(size)
    @smartphone.screen = Touchscreen.new(size)
  end

  def add_ram(amount)
    @smartphone.ram = RAM.new(amount)
  end

  def add_memory(amount)
    @smartphone.memory = amount
  end

  def set_os(os)
    @smartphone.os = os
  end

  def smartphone
    obj = @smartphone.dup
    @smartphone = Smartphone.new
    return obj
  end

  def self.build
    builder = new
    yield(builder)
    builder.smartphone
  end
end

class Order
  attr_accessor :products
  def initialize
    @products = []
  end
end

order = Order.new

5.times do
  smartphone = SmartphoneBuilder.build do |builder|
    builder.set_model("Apple iPhone 6S")
    builder.add_touchscreen(4.7)
    builder.add_processor(1.84)
    builder.add_ram(2048)
    builder.add_memory(16384)
    builder.set_os(:ios)
  end
  order.products << smartphone
end

puts order.products.last.model

