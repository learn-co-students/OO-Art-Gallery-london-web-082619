class Gallery
  attr_reader :name, :city

  @@all = []

  ###### Instance methods ######

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  #Return an array of all paintings in a gallery
  def paintings()
    Painting.all.select { | painting | painting.gallery == self }
  end

  #Return an array of all artists who have a painting in the gallery
  def artists()
    self.paintings().map { | painting | painting.artist }.uniq
  end

  #Return an array of the names of all artists who have a painting in the gallery
  def artist_names()
    self.artists().map { | artist | artist.name }
  end

  #Return the most expensive painting in the gallery
  def most_expensive_painting()
    self.paintings().max_by { | painting | painting.price }
  end


  ###### Class methods ######

  #Return an array of all gallery instances
  def self.all()
    @@all
  end


end
