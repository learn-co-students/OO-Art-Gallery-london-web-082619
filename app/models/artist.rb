class Artist

  @@all=[]

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{ |painting| painting.artist == self}
  end

  def galleries
    self.aintings.map{ |painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map{ |gallery| gallery.city}.uniq
  end

  def self.total_experience
    self.all.sum{ |artist| artist.years_experience }
  end

  def paintings_per_year
    self.paintings.length / @years_experience
  end

  def self.most_profilic
    Artist.max_by{ |artist| artist.paintings_per_year}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, galley)
  end

end