class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  #Returns an array of all the paintings
  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  def self.total_price
  #Returns an integer that is the total price of all paintings
    @@all.sum{ |painting| painting.price }
  end

end
