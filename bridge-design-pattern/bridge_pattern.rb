class Shape
  def initialize(implementor)
    @implementor = implementor
  end
end

class RectangleShape < Shape
  def draw
    @implementor.draw_rectangle
  end
end

class CircleShape < Shape
  def draw
    @implementors.draw_circle
  end
end

class ShapeImplementor
  def draw_circle
    raise '#draw_circle must be defined.'
  end

  def draw_rectangle
    raise '#draw_rectangle must de defined.'
  end
end

class WindowsShapeImplementor < ShapeImplementor
  def draw_circle
    puts 'Drawing a Circle on a Windows system'
  end

  def draw_rectangle
    puts 'Drawing a Rectangle on a Windows system'
  end
end

class MacShapeImplementor < ShapeImplementor
  def draw_circle
    puts 'Drawing a Circle on a Mac system'
  end

  def draw_rectangle
    puts 'Drawing a Rectangle on a Mac system'
  end
end

rectangle = RectangleShape.new(MacShapeImplementor.new)

rectangle.draw
