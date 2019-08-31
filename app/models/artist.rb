class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end
  
  def paintings
    Painting.all.select { | painting | painting.artist == self }
  end

  def galleries
      paintings.map { | painting | painting.gallery }
  end

  def cities
      galleries.map { | gall | gall.city }.uniq
  end

  def paintings_per_year
      self.paintings.length / @years_experience
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.most_prolific
    @@all.max_by { | artist | artist.paintings_per_year }
  end

  def self.total_experience
    @@all.sum { | artist | exp.years_experience }
  end

end
