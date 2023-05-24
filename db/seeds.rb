puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
roots_and_rolls = {name: "Roots & Rolls", address: "C/ del Consell de Cent, 401, bajos, 08009 derecha, Barcelona", category: "japanese", phone_number: "931 71 79 02"}
gallo_santo = {name: "Gallo Santo", address: "Carrer del Torrent de l'Olla, 64, 08012 Barcelona", category: "french", phone_number: "930 27 67 46"}
honest_greens = {name: "Honest Greens", address: "Rambla de Catalunya, 3, 08007 Barcelona", category: "italian", phone_number: "931 22 76 64"}
flax_and_kale = {name: "Flax & Kale", address: "Pg. de Gràcia, 11, 08002 Barcelona", category: "chinese", phone_number: "931 44 08 12"}
exotic_brunch = {name: "Exotic Brunch", address: "Carrer de Calàbria, 204, 08029 Barcelona", category: "belgian", phone_number: "605 45 05 59"}

[roots_and_rolls, gallo_santo, honest_greens, flax_and_kale, exotic_brunch]. each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
