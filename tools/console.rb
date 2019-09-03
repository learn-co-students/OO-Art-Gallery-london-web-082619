require_relative '../config/environment.rb'

paintings = ["Mona Lisa", "The bridge", "Many flowers", "Sad Pondering Boy", "The dream"]
artists = ["Michaelangelo", "Leonardo", "Raphael", "Donatello"]
gallery = ["Louvre", "London", "San Fran", "Birmingham"]

artist = Artist.new(artists.sample, rand(2...10))
gallery = Gallery.new(gallery.sample, gallery.sample)
painting = Painting.new(paintings.sample, rand(10000), artist, gallery)

binding.pry

puts "Bob Ross rules."