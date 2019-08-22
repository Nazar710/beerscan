
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BeerGlass.destroy_all
Glass.destroy_all
Beer.destroy_all
Brewery.destroy_all
Country.destroy_all
Category.destroy_all
Color.destroy_all

url = "https://www.sccpre.cat/mypng/full/229-2299164_world-wow-horde-mug.png"
niceglass = Glass.new(name: "cutie")
niceglass.remote_photo_url = url
niceglass.save
lager = Category.new(name: "lager",  description: "shit beer")
lager.save
glassconnector = BeerGlass.new(category: lager, glass: niceglass)
glassconnector.save
green = Color.new(name: "green")
green.save
denmark = Country.new(name: "denmark")
denmark.save
cock = Brewery.new(name: "cock", country: denmark)

puts "hacking in progress..."

url = "https://pbs.twimg.com/media/D88Ug9DXoAUQ1fB.jpg"
beer = Beer.new(name: "Tuborg", beer_story: "beer is trash anyway", upc: "5740700301544", alcohol: 5.4, temperature: 200000000, rating: 5, ibu: 12)
beer.category = lager
beer.color = green
beer.brewery = cock
beer.remote_photo_url = url
beer.save!

url = "https://pbs.twimg.com/media/D88Ug9DXoAUQ1fB.jpg"
beer = Beer.new(name: "Carlsberg", beer_story: "beer is trash anyway", upc: "5740700301544", alcohol: 5.4, temperature: 200000000, rating: 5)
beer.category = lager
beer.color = green
beer.brewery = cock
beer.remote_photo_url = url
beer.save!

puts "lmao"
