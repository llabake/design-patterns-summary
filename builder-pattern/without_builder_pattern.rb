class Touchscreen
  attr_reader :resolution

  def initialize(resolution)
    @resolution = resolution
  end
end

class CPU
  attr_reader :power

  def initialize(power)
    @power = power
  end
end

class RAM
  attr_reader :size

  def initialize(size)
    @size = size
  end
end

class Smartphone
  attr_accessor :model, :screen, :cpu, :ram, :memory, :os

  def initialize(model = nil, screen = nil, cpu = nil, ram = nil, memory = nil, os = nil)
    @model  = model
    @screen = screen
    @cpu    = cpu
    @ram    = ram
    @memory = memory
    @os     = os
  end
end