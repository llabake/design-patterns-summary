module Texty
  class Texty::Searcher
    def self.search(query)
      puts "searched #{query}"
    end
  end

  class Texty::Finder
    def self.find(phrase)
      puts "found #{phrase}"
    end
  end

  class Texty::Serializer
    def self.serialize(string)
      puts "serialized #{string}"
    end
  end

  class Texty::Facade
    def search(query)
      Texty::Searcher.search(query)
    end

    def find(phrase)
      Texty::Finder.find(phrase)
    end

    def serialize(string)
      Texty::Serializer.serialize(string)
    end
  end
end

facade = Texty::Facade.new
facade.search("when in rome")

facade.find("city of love")

facade.serialize("the rain in spain")