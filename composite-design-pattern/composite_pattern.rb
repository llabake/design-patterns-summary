class MusicComponent
  attr_accessor :children

  def initialize
    @children = []
  end

  def add_child(component)
    @children.push(component)
    component.parent = self
  end

  def remove_child(component)
    @children.delete(component)
    component.parent = nil
  end

  def get_child(index)
    @children[index]
  end

  def get_children
    @children
  end
end

class Discography < MusicComponent
  attr_accessor :artist

  def initialize(artist)
    super()
    @artist = artist
  end
end

class Album < MusicComponent
  attr_accessor :parent, :title

  def initialize(title)
    super()
    @title = title
  end
end

class Song < MusicComponent
  attr_accessor :parent, :title

  def initialize(title)
    super()
    @title = title
  end
end


beatles_discography = Discography.new('The Beatles')

# We create a few albums here to add to the discography
rubber_soul = Album.new('Rubber Soul')
revolver = Album.new('Revolver')
sgt_peppers = Album.new('Sgt. Pepper\'s Lonely Hearts Club Band')
abbey_road = Album.new('Abbey Road')

# We add a few songs to the albums here
rubber_soul.add_child(Song.new('Norwegian Wood'))
rubber_soul.add_child(Song.new('Nowhere Man'))
revolver.add_child(Song.new('Eleanor Rigby'))
revolver.add_child(Song.new('Tomorrow Never Knows'))
sgt_peppers.add_child(Song.new('With a Little Help from My Friends'))
sgt_peppers.add_child(Song.new('Getting Better'))
abbey_road.add_child(Song.new('Come Together'))
abbey_road.add_child(Song.new('Here Comes the Sun'))

# We add the albums to the discography
beatles_discography.add_child(rubber_soul)
beatles_discography.add_child(revolver)
beatles_discography.add_child(sgt_peppers)
beatles_discography.add_child(abbey_road)

# We can now navigate through the discography with ease
beatles_discography.children
beatles_discography.children.first.children
norwegian_wood = beatles_discography.children.first.children.first
norwegian_wood.parent # Rubber Soul
norwegian_wood.parent.parent # Beatle's Discography