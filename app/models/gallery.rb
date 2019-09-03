


class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
      @@all
  end

  def exhibit_pic(pic)
      pic.gallery = self
  end

  def return_pic(pic, receiver="Pictures at home")
      pic.gallery = receiver
  end

  def pic_in_gallery
      Painting.all.select{|pic_ins| pic_ins.gallery == self}
  end

  def paintings
      Painting.all.select{|pic| pic.gallery == self}
  end

  def artists
      self.paintings.map{|pic| pic.artist}.uniq
  end

  def artists_name
      self.artists.map{|a| a.name}
  end

  def most_expensive_painting
      self.paintings.max_by{|p_ins| p_ins.price}
  end

end
