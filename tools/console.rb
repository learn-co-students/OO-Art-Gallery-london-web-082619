require_relative '../config/environment.rb'


richter = Artist.new("Gerhard Richter", 50)
lara = Artist.new("Lara Gheriani", 3)
picasso = Artist.new("Pablo Picasso", 60)

london_gallery = Gallery.new("London Gallery", "London")
nyc_gallery = Gallery.new("NYC Gallery", "NYC")

ll = lara.create_painting("For LL", 6000)
victoria = richter.create_painting("Victoria", 3000)
kerze = richter.create_painting("Kerze", 100000)
blattecke = richter.create_painting("Blattecke", 50000)
guernica = picasso.create_painting("Guernica", 700000)
dream = picasso.create_painting("The Dream", 900000)

london_gallery.exhibit_pic(ll)
london_gallery.exhibit_pic(victoria)
london_gallery.exhibit_pic(kerze)

nyc_gallery.exhibit_pic(guernica)
nyc_gallery.exhibit_pic(dream)
nyc_gallery.exhibit_pic(blattecke)



binding.pry

puts "Bob Ross rules."
