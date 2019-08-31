class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}.uniq
  end

  def paintings_per_year
    paintings.length / @years_experience
  end

  def create_painting(artist, title, price)
    Painting.new(self, artist, title, price)
  end

  def self.total_experience
    @@all.sum {|artist| artist.years_experience}
  end

  def self.most_prolific
    @@all.max_by {|artist| artist.paintings_per_year}
  end

  def self.all
    @@all
  end

end
