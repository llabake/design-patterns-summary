class Character
  attr_reader :character

  def initialize(character)
    @character = character
  end
end

class CharacterFactory
  def initialize
    @pool = {}
  end

  def find_character(character)
    if @pool.has_key?(character)
      character = @pool[character]
    else
      character = create_character(character)
      @pool[character] = character
    end
    character
  end

  def pool_size
    @pool.size
  end

  private

  def create_character(character)
    Character.new(character)
  end
end

class Document
  attr_reader :character_factory

  def initialize
    @character_factory = CharacterFactory.new

    @document = []
  end

  def add_character(character)
    character = @character_factory.find_character(character)
    @document << character
  end

  def output_document
    @document.inject("") do |printed, character|
      printed << character.character
    end
  end
end

document = Document.new

document.add_character("t") # The "t" character is added to the flyweight pool
document.add_character("h") # The "h" character is added to the flyweight pool
document.add_character("e") # The "e" character is added to the flyweight pool
document.add_character(" ") # The " " character is added to the flyweight pool
document.add_character("r") # The "r" character is added to the flyweight pool
document.add_character("a") # The "a" character is added to the flyweight pool
document.add_character("i") # The "i" character is added to the flyweight pool
document.add_character("n") # The "n" character is added to the flyweight pool
document.add_character(" ") # shared " "
document.add_character("i") # shared "i"
document.add_character("n") # shared "n"
document.add_character(" ") # shared " "
document.add_character("s") # The "s" character is added to the flyweight pool
document.add_character("p") # The "p" character is added to the flyweight pool
document.add_character("a") # shared "a"
document.add_character("i") # shared "i"
document.add_character("n") # shared "n"

puts document.output_document # "the rain in spain"
puts document.character_factory.pool_size # 17