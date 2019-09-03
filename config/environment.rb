require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

#SEED DATA

a1 = Artist.new("John", 12)
a2 = Artist.new("Sarah", 30)
a3 = Artist.new("Tom", 5)

g1 = Gallery.new("The MET", "New York")
g2 = Gallery.new("Tate Liverpool", "Liverpool")
g3 = Gallery.new("British Museum", "London")
g4 = Gallery.new("Tate Modern", "London")

p1 = Painting.new("The Waterfall", 1200)
p2 = Painting.new("Time", 900)
p3 = Painting.new("Earth and Space", 500)

a1.create_painting("Rainbows", 3000, g1)
a2.create_painting("Blue", 200, g2)
a3.create_painting("Red", 20, g3)
a1.create_painting("Colours", 400, g4)
a2.create_painting("Rainbows", 3000, g3)

binding.pry
'save'