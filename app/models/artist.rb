class Artist 
  attr_reader :name, :years_experience

  @@all = []

  ###### Instance methods ######

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  #Return an array of all paintings by the artist
  def paintings()
    Painting.all.select { | painting | painting.artist == self }
  end

  #Return an array of all galleries the artist has paintings in
  def galleries()
    self.paintings().map { | painting | painting.gallery }.uniq
  end

  #Return an array of all cities the artist has paintings in
  def cities()
    self.galleries().map { | gallery | gallery.city }.uniq
  end

  #Create a new painting by the artist
  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end


  ###### Class methods ######

  #Return an array of all artist instances
  def self.all()
    @@all
  end

  #Return an integer that is the total years of experience of all artists
  def self.total_experience()
    self.all().reduce(0) { | memo, artist | memo + artist.years_experience }
  end

  #Return the artist with the highest number of paintings per years' experience
  def self.most_prolific()
    self.all().max_by do | artist | 
      artist.paintings().length.to_f / artist.years_experience
    end
  end

end
