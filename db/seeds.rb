# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Beer.destroy_all
Brewery.destroy_all
Country.destroy_all
Category.destroy_all
Color.destroy_all
lager = Category.new(name: "Lager", description: "Delicious")
lager.save
blonde = Color.new(name: "Blonde")
blonde.save
denmark = Country.new(name: "Denmark")
denmark.save
carslberg = Brewery.new(name: "Carlsberg", country: denmark)

beer = Beer.new(name: "Carlsberg Pilsner", alcohol: 4.5, temperature: 6)
beer.category = lager
beer.color = blonde
beer.brewery = carslberg
beer.photo = "http://somepicture.com/picture.jpg"
# When cloudinary and carrierwave are set up
# beer.remote_photo_url = "http://somepicture.com/picture.jpg"

beer.save!
