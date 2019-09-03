


class Painting

  attr_reader :title, :artist
  attr_accessor :price, :gallery

  @@all = []

  def initialize(title, price, artist, gallery="Pictures at home")
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
      @@all
  end

  def self.total_price
    self.all.sum{|p_ins| p_ins.price}
  end


end
