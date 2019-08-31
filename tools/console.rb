require_relative '../config/environment.rb'

names = ["Picasso", "Monet", "Matisse", "Rembrandt", "Da Vinci"]
gallery_names = ["Tate Britain", "National Portrait Gallery", "Louvre", "Vatican", "Old Acropolis"]
cities = ["London", "Paris", "Rome", "Athens", "New York"]
titles = ["Mona Lisa", "Girl With A Pearl Earring", "No. 5", "The Scream", "Starry Night"]

artist1 = Artist.new(names.sample(), 20)
artist2 = Artist.new(names.sample(), 20)
artist3 = Artist.new(names.sample(), 20)

gallery1 = Gallery.new(gallery_names.sample(), cities.sample())
gallery2 = Gallery.new(gallery_names.sample(), cities.sample())
gallery3 = Gallery.new(gallery_names.sample(), cities.sample())

painting1 = Painting.new(Artist.all.sample(), titles.sample(), 1000, Gallery.all.sample())
painting2 = Painting.new(Artist.all.sample(), titles.sample(), 100, Gallery.all.sample())
painting3 = Painting.new(Artist.all.sample(), titles.sample(), 100, Gallery.all.sample())
100.times { Painting.new(Artist.all.sample(), titles.sample(), 100, Gallery.all.sample()) }

binding.pry

puts "Bob Ross rules."
