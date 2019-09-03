
#structure: artist -< paintings >- galleries

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
  
  def create_painting(title, price, gallery=nil)
      Painting.new(title, price, self, gallery)
  end

  def paintings
      Painting.all.select{|pic| pic.artist == self}
  end

  def paintings_count
      self.paintings.length
  end

  def galleries
      self.paintings.map{|pic| pic.gallery}.uniq
  end

  def cities
      self.galleries.map{|g| g.city}
  end

  def self.total_experience
      self.all.sum{|artist| artist.years_experience}
  end

  def self.most_prolific
      self.all.max_by{|artist| artist.paintings_count * 100 / artist.years_experience}
  end


end
