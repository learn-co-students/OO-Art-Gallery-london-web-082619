require_relative '../config/environment.rb'

a1 = Artist.new("Picasso", 2)
a2 = Artist.new("Monet", 20)
a3 = Artist.new("Ross", 40)
a4 = Artist.new("Mike", 7)

g1 = Gallery.new("Fancy", "New York")
g2 = Gallery.new("Classy", "New Orleans")
g3 = Gallery.new("The Louvre", "Paris")
g4 = Gallery.new("Night Gallery", "Unknown")


Painting.new(a1, g1, "Flowers", 200)
Painting.new(a1, g2, "Book", 300)
Painting.new(a2, g3, "Ducks", 10000)
Painting.new(a2, g4, "Boat", 1000)
a3.create_painting(g3, "Fish", 1)
a4.create_painting(g2, "Two dogs on a boat", 55)


binding.pry

puts "Bob Ross rules."
