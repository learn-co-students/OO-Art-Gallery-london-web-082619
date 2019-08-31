class Painting
  attr_reader :title, :price, :artist, :gallery

  @@all = []

  ###### Instance methods ######

  def initialize(artist, title, price, gallery)
    @artist = artist
    @title = title
    @price = price
    @gallery = gallery

    @@all << self
  end

  ###### Class methods ######

  #Return an array of all painting instances
  def self.all()
    @@all
  end

  #Return the total price of all paintings as an integer
  def self.total_price
    self.all().reduce(0) { | memo, painting | memo + painting.price }
  end


end
