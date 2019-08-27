
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying everything"

Beer.destroy_all
BeerFood.destroy_all
Glass.destroy_all
Brewery.destroy_all
Country.destroy_all
Category.destroy_all
Color.destroy_all
Food.destroy_all

puts "Creating glasses"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1566570202/masks_landing/beers_project/tumbler_ckfbjg.png"
tumbler = Glass.new(name: "Tumbler")
tumbler.remote_photo_url = url
tumbler.save!

url = "https://res.cloudinary.com/tatigrassi/image/upload/v1566570188/masks_landing/beers_project/tumbler2_copy_iw0fro.png"
larger_glass = Glass.new(name: "Larger")
larger_glass.remote_photo_url = url
larger_glass.save!

puts "Creating categories"
lager = Category.create!(name: "Lager",  description: "Cool fermentation, followed by maturation in cold storage.")
witbier = Category.create!(name: "Witbier ",  description: "Brewed with unmalted wheat, oats and/or malted barley.")
pilsen = Category.create!(name: "Pilsen",  description: "A type of pale lager, brewed with brighter malt and soft water.")

puts "Creating colors"
light_yellow = Color.create!(name: "Light yellow")
yellow = Color.create!(name: "Yellow")
dark_yellow = Color.create!(name: "Dark yellow")
light_brown = Color.create!(name: "Light brown")
brown = Color.create!(name: "Brown")
dark_brown = Color.create!(name: "Dark brown")

puts "Creating contries"
denmark = Country.create!(name: "Denmark")
belgium = Country.create!(name: "Belgium")
germany = Country.create!(name: "Germany")
brazil = Country.create!(name: "Brazil")

puts "Creating breweries"
tuborg_brew = Brewery.create!(name: "Tuborg", country: denmark)
carlsberg_brew = Brewery.create!(name: "Carlsberg", country: denmark)
praya_brew = Brewery.create!(name: "Praya", country: brazil)

puts "Creating food"
seafood = Food.create!(name: "Seafood")
salad = Food.create!(name: "Salad")
meat = Food.create!(name: "Meat")
chicken = Food.create!(name: "Chicken")
pasta = Food.create!(name: "Pasta")
japanese = Food.create!(name: "Japanese food")
spicy = Food.create!(name: "Spicy food")
cheese = Food.create!(name: "Cheese")


puts "Creating beer 1"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1566565922/masks_landing/beers_project/bottles%20and%20cans/az_apr17_tuborg_kg62jl.png"
tuborg = Beer.new(name: "Tuborg", beer_story: "A bottom-fermented lager beer. It's brewed on lager malt, a slightly roasted, bright type of malt which results in the well-known mild, fresh taste and aroma of flowers and grain. The beer is medium rich and lively with a moderate bitterness in the aftertaste.", upc: "5740700301544", alcohol: 7.8, temperature: "5-8", rating: 4, ibu: 10)
tuborg.category = lager
tuborg.color = yellow
tuborg.brewery = tuborg_brew
tuborg.remote_photo_url = url
tuborg.glass = tumbler
tuborg.save!

puts "Linking food to beer 1"
BeerFood.create!(beer: tuborg, food: seafood)
BeerFood.create!(beer: tuborg, food: salad)
BeerFood.create!(beer: tuborg, food: spicy)

puts "Creating beer 2"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1566564292/masks_landing/beers_project/bottles%20and%20cans/carlsberg-beer-png-3_mdo8ei.png"
carlsberg = Beer.new(name: "Carlsberg", beer_story: "Pilsener with a malty backbone and balanced bitterness. Aka: probably the best beer in the world.", upc: "5740700301544", alcohol: 5.4, temperature: 200000000, rating: 5)
carlsberg.category = pilsen
carlsberg.color = light_yellow
carlsberg.brewery = carlsberg_brew
carlsberg.remote_photo_url = url
carlsberg.glass = tumbler
carlsberg.save!

puts "Linking food to beer 2"
BeerFood.create!(beer: carlsberg, food: meat)
BeerFood.create!(beer: carlsberg, food: chicken)
BeerFood.create!(beer: carlsberg, food: pasta)

puts "Creating beer 3"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1566564313/masks_landing/beers_project/bottles%20and%20cans/tuborg-classic-bottl_ofytdc.png"
tuborg_classic = Beer.new(name: "Tuborg Classic", beer_story: "The original ’Classic’ was introduced on the occasion of Tuborg’s 120th birthday. Together, the complex combination of several different types of malt results in a playful mixture of an easy-to-drink beer with lots of great taste. The beer is dark in color and has a little bit of sweetness in the taste.", upc: "5740700301544", alcohol: 6.2, temperature: 5, rating: 4)
tuborg_classic.category = witbier
tuborg_classic.color = yellow
tuborg_classic.brewery = tuborg_brew
tuborg_classic.remote_photo_url = url
tuborg_classic.glass = tumbler
tuborg_classic.save!

puts "Linking food to beer 3"
BeerFood.create!(beer: tuborg_classic, food: meat)
BeerFood.create!(beer: tuborg_classic, food: seafood)
BeerFood.create!(beer: tuborg_classic, food: cheese)

puts "Creating beer 4"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1566565119/masks_landing/beers_project/bottles%20and%20cans/hero__0008_superlight_bnhlyr.png"
tuborg_super_light = Beer.new(name: "Tuborg Super Light", beer_story: "The non-alcoholic version of the Tuborg Green. The pilsner taste is a result of the fact that it is brewed as a real pilsner, where the alcohol is later removed, gently. And, as an added bonus, it’s also low in calories – with just 40% of the calories of an ordinary pilsner.", upc: "5740700301544", alcohol: 0, temperature: 6, rating: 3)
tuborg_super_light.category = pilsen
tuborg_super_light.color = light_yellow
tuborg_super_light.brewery = tuborg_brew
tuborg_super_light.remote_photo_url = url
tuborg_super_light.glass = tumbler
tuborg_super_light.save!

puts "Linking food to beer 4"
BeerFood.create!(beer: tuborg_super_light, food: japanese)
BeerFood.create!(beer: tuborg_super_light, food: salad)
BeerFood.create!(beer: tuborg_super_light, food: seafood)

puts "Done!"
