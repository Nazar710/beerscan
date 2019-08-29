
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying everything"

BeerFood.destroy_all
Beer.destroy_all
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
pilsner = Category.create!(name: "Pilsner",  description: "A type of pale lager, brewed with brighter malt and soft water.")
ale = Category.create!(name: "Ale", description: "Ale is a type of beer brewed using a warm fermentation method, resulting in a sweet, full-bodied and fruity taste. Historically, the term referred to a drink brewed without hops.")

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
france = Country.create!(name: "France")
usa = Country.create!(name: "USA")

puts "Creating breweries"
tuborg_brew = Brewery.create!(name: "Tuborg", country: denmark)
carlsberg_brew = Brewery.create!(name: "Carlsberg", country: denmark)
praya_brew = Brewery.create!(name: "Praya", country: brazil)
brooklyn_brew = Brewery.create!(name: "Brooklyn", country: usa)
grimbergen_brew = Brewery.create!(name: "Grimbergen", country: belgium)


puts "Creating food"
seafood = Food.create!(name: "Seafood")
salad = Food.create!(name: "Salad")
meat = Food.create!(name: "Meat")
chicken = Food.create!(name: "Chicken")
pasta = Food.create!(name: "Pasta")
japanese = Food.create!(name: "Japanese food")
spicy = Food.create!(name: "Spicy food")
cheese = Food.create!(name: "Cheese")
vodka = Food.create!(name: "Vodka")


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
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567068269/masks_landing/beers_project/bottles%20and%20cans/carlsberg_bhsflv.png"
carlsberg = Beer.new(name: "Carlsberg", beer_story: "Pilsner with a malty backbone and balanced bitterness. Aka: probably the best beer in the world.", upc: "5740700301544", alcohol: 5.4, temperature: 200000000, rating: 5)
carlsberg.category = pilsner
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
tuborg_super_light.category = pilsner
tuborg_super_light.color = light_yellow
tuborg_super_light.brewery = tuborg_brew
tuborg_super_light.remote_photo_url = url
tuborg_super_light.glass = tumbler
tuborg_super_light.save!

puts "Linking food to beer 4"
BeerFood.create!(beer: tuborg_super_light, food: japanese)
BeerFood.create!(beer: tuborg_super_light, food: salad)
BeerFood.create!(beer: tuborg_super_light, food: seafood)

puts "Creating beer 5"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566982138/fr_skoll-tuborg_uj5iml.png"
tuborg_skoll = Beer.new(name: "Tuborg Skoll", beer_story: "Tuborg Skøll a refreshing aromatised beer with a perfect combination of vodka and fruits. It has a bright golden colour, mild sparkes and a white head. The aroma is fruity and dominated by citrus. The taste is characterised by green lemon and grapefruit, a well-balanced mix of vodka, sweetness and tartness with a slight bitterness in the aftertaste.", upc: "5740700301544", alcohol: 6, temperature: 6, rating: 3)
tuborg_skoll.category = pilsner
tuborg_skoll.color = light_yellow
tuborg_skoll.brewery = tuborg_brew
tuborg_skoll.remote_photo_url = url
tuborg_skoll.glass = tumbler
tuborg_skoll.save!

puts "Linking food to beer 5 "
BeerFood.create!(beer: tuborg_skoll, food: japanese)
BeerFood.create!(beer: tuborg_skoll, food: salad)
BeerFood.create!(beer: tuborg_skoll, food: vodka)

puts "Creating beer 6"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566982393/roed_tuborg_33cl_vaad_cmyk_lj6fsn.png"
rod_tuborg = Beer.new(name: "Rod Tuborg", beer_story: "Red Tuborg is a dark, bottom-fermented lager beer that comes from Barvaria in Germany. Red Tuborg is a so-called all-malt beer, meaning that only malt and no raw grains (maize) are used. Four types of malt is used: münchener malt, pilsner malt and a bit of caramel and color malt. Together, these ingredients give the Tuborg yeast the distinctive reddish color, a very rich flavor and a rich foam. Ever since 1875, the Red Tuborg recipe has stayed the same.

", upc: "5740700301544", alcohol: 4.3, temperature: 6, rating: 5, IBU: 30)
rod_tuborg.category = pilsner
rod_tuborg.color = dark_brown
rod_tuborg.brewery = tuborg_brew
rod_tuborg.remote_photo_url = url
rod_tuborg.glass = tumbler
rod_tuborg.save!

puts "Linking food to beer 6"
BeerFood.create!(beer: rod_tuborg, food: meat)
BeerFood.create!(beer: rod_tuborg, food: pasta)
BeerFood.create!(beer: rod_tuborg, food: vodka)

puts "Creating beer 7"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566984843/106990_paaskebryg_2016_wet_l4twoh.png"
tuborg_paskebryg = Beer.new(name: "Tuborg Påskebryg", beer_story: "Tuborg Easter Brew saw the light of day back in 1913. Since 1965, it has been popularly know as 'Kylle Kylle' among Danes. Tuborg Easter Brew is a golden beer with warm notes. The aroma is lightly spiced with said floral nuances. The beer delivers a lively first impression with a nice volume and a refined, discrete sweetness.", upc: "5740700301544", alcohol: 5.7, temperature: 12, rating: 5, IBU: 20)
tuborg_paskebryg.category = pilsner
tuborg_paskebryg.color = dark_yellow
tuborg_paskebryg.brewery = tuborg_brew
tuborg_paskebryg.remote_photo_url = url
tuborg_paskebryg.glass = tumbler
tuborg_paskebryg.save!

puts "Linking food to beer 7"
BeerFood.create!(beer: tuborg_paskebryg, food: chicken)
BeerFood.create!(beer: tuborg_paskebryg, food: salad)
BeerFood.create!(beer: tuborg_paskebryg, food: vodka)

puts "Creating beer 8"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566983790/in_tuborg-classic-bottle_aha1p5.png"
tuborg_with_scotch = Beer.new(name: "Tuborg With Scotch Malts", beer_story: "Tuborg Skøll a refreshing aromatised beer with a perfect combination of vodka and fruits. It has a bright golden colour, mild sparkes and a white head. The aroma is fruity and dominated by citrus. The taste is characterised by green lemon and grapefruit, a well-balanced mix of vodka, sweetness and tartness with a slight bitterness in the aftertaste.", upc: "5740700301544", alcohol: 6.7, temperature: 10, rating: 5, IBU: 50)
tuborg_with_scotch.category = pilsner
tuborg_with_scotch.color = light_yellow
tuborg_with_scotch.brewery = tuborg_brew
tuborg_with_scotch.remote_photo_url = url
tuborg_with_scotch.glass = tumbler
tuborg_with_scotch.save!

puts "Linking food to beer 8"
BeerFood.create!(beer: tuborg_with_scotch, food: japanese)
BeerFood.create!(beer: tuborg_with_scotch, food: meat)
BeerFood.create!(beer: tuborg_with_scotch, food: vodka)

puts "Creating beer 9"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566984837/105444_guld_bottle_packshot_hbc3sz.png"
tuborg_gold = Beer.new(name: "Tuborg Gold", beer_story: "Tuborg Gold is brewed on pure lager malt and has an inviting aroma of fruit and grain with notes of fennel. It's an elegant beer with an excellent balance between a dry richness, a certain liveliness and a subtle hop character.", upc: "5740700301544", alcohol: 5.8, temperature: 13, rating: 4, IBU: 25)
tuborg_gold.category = pilsner
tuborg_gold.color = light_yellow
tuborg_gold.brewery = tuborg_brew
tuborg_gold.remote_photo_url = url
tuborg_gold.glass = tumbler
tuborg_gold.save!

puts "Linking food to beer 9"
BeerFood.create!(beer: tuborg_gold, food: meat)
BeerFood.create!(beer: tuborg_gold, food: cheese)
BeerFood.create!(beer: tuborg_gold, food: vodka)

puts "Creating beer 10"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566984504/lu_05_flasche_urkraft_2014_wznxgf.png"
lubzer_urcraft = Beer.new(name: "Lübzer Urkraft", beer_story: "Lübzer Urkraft is a beer with a special degree of Lübzer taste. The unique combination of zesty flavour and an enriched alcohol content of 6% result in a one and only taste experience. A balanced bottom-fermented beer. Lübzer Urkraft has a full-bodied, distinctive taste. The glass bottle is transparent, highlighting its contemporary design, and it lets the beer’s amber colour sparkle through.", upc: "5740700301544", alcohol: 6, temperature: 15, rating: 4, IBU: 60)
lubzer_urcraft.category = pilsner
lubzer_urcraft.color = light_yellow
lubzer_urcraft.brewery = tuborg_brew
lubzer_urcraft.remote_photo_url = url
lubzer_urcraft.glass = tumbler
lubzer_urcraft.save!

puts "Linking food to beer 10"
BeerFood.create!(beer: lubzer_urcraft, food: chicken)
BeerFood.create!(beer: lubzer_urcraft, food: cheese)
BeerFood.create!(beer: lubzer_urcraft, food: vodka)

puts "Creating beer 16"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566989717/brooklyn_hecla_iron_ale_lchcbj.png"
brooklyn_hecla_iron_ale = Beer.new(name: "Brooklyn Hecla Ale", beer_story: "Brooklyn Hecla Iron Ale is a flavorful dark ale celebrating the old Hecla Iron Works, which once occupied the building that is now the Brooklyn brewhouse in Williamsburg, Brooklyn. Named for a fierce Nordic volcano, Hecla Iron Works products were relied upon for projects from the New York Stock Exchange to the cast iron plates of Soho’s skyscrapers. They also gained renown for their pioneering work in delicate scrollwork and intricate decorations, examples of which can still be seen on the windowsills of the Brooklyn Brewery warehouse. Hecla Iron Ale is forged of rugged roast malts and resilient herbal hops to create a light yet robust beer fit to satisfy any hard worker.", upc: "5740700301544", alcohol: 3.4, temperature: 9, rating: 4, IBU: 35)
brooklyn_hecla_iron_ale.category = pilsner
brooklyn_hecla_iron_ale.color = light_yellow
brooklyn_hecla_iron_ale.brewery = brooklyn_brew
brooklyn_hecla_iron_ale.remote_photo_url = url
brooklyn_hecla_iron_ale.glass = tumbler
brooklyn_hecla_iron_ale.save!

puts "Linking food to beer 16"
BeerFood.create!(beer: brooklyn_hecla_iron_ale, food: chicken)
BeerFood.create!(beer: brooklyn_hecla_iron_ale, food: meat)
BeerFood.create!(beer: brooklyn_hecla_iron_ale, food: vodka)

puts "Creating beer 11"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566987652/ru_grimbergen-double-ambree_qfumsc.png"
grimbergen_double_ambree = Beer.new(name: "Grimbergen Ambrée", beer_story: "Grimbergen Double-Ambrée is a full-bodied beer. The use of two roasted malts give it its amber colour. The taste is rich, deep and ample while its subtly caramelized notes gives it a bittersweet sensation.", upc: "5740700301544", alcohol: 6.5, temperature: 15, rating: 5, IBU: 45)
grimbergen_double_ambree.category = ale
grimbergen_double_ambree.color = brown
grimbergen_double_ambree.brewery = grimbergen_brew
grimbergen_double_ambree.remote_photo_url = url
grimbergen_double_ambree.glass = tumbler
grimbergen_double_ambree.save!

puts "Linking food to beer 11"
BeerFood.create!(beer: grimbergen_double_ambree, food: chicken)
BeerFood.create!(beer: grimbergen_double_ambree, food: cheese)
BeerFood.create!(beer: grimbergen_double_ambree, food: vodka)

puts "Creating beer 12"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566988432/grimbergen-poire-bottle-33-cl_kqgptk.png"
grimbergen_poire = Beer.new(name: "Grimbergen Poire", beer_story: "In the Middle Ages, some monasteries sheltered pear cultures. In respect for their traditions, Grimbergen launches Grimbergen Poire. Grimbergen Poire combines the authenticity of Grimbergen abbey beers with the sweet but intense taste of pear.", upc: "5740700301544", alcohol: 6, temperature: 15, rating: 5, IBU: 25)
grimbergen_poire.category = ale
grimbergen_poire.color = brown
grimbergen_poire.brewery = grimbergen_brew
grimbergen_poire.remote_photo_url = url
grimbergen_poire.glass = tumbler
grimbergen_poire.save!

puts "Linking food to beer 12"
BeerFood.create!(beer: grimbergen_poire, food: meat)
BeerFood.create!(beer: grimbergen_poire, food: cheese)
BeerFood.create!(beer: grimbergen_poire, food: vodka)

puts "Creating beer 13"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566988645/ru_grimbergen-rouge_i5mlm2.png"
grimbergen_rouge = Beer.new(name: "Grimbergen Rouge", beer_story: "ROUNDED & FRUITY. Grimbergen Rouge, flavoured with red fruits, subtly combines the character of an Abbey beer with the sweetness and notes of strawberry, cranberry and elderberry. Its purple colour with intense reflections and its slightly pink foam indicates a unique flavour.", upc: "5740700301544", alcohol: 6, temperature: 15, rating: 5, IBU: 60)
grimbergen_rouge.category = ale
grimbergen_rouge.color = brown
grimbergen_rouge.brewery = grimbergen_brew
grimbergen_rouge.remote_photo_url = url
grimbergen_rouge.glass = tumbler
grimbergen_rouge.save!

puts "Linking food to beer 13"
BeerFood.create!(beer: grimbergen_rouge, food: meat)
BeerFood.create!(beer: grimbergen_rouge, food: cheese)
BeerFood.create!(beer: grimbergen_rouge, food: vodka)


puts "Creating beer 14"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566989300/brooklyn_american_ale_s5az3y.png"
grimbergen_double_ambree = Beer.new(name: "Brooklyn American Ale", beer_story: "In New York City, things are complicated, fast and loud. So sometimes Newyorkers want a nice beer that's simply tasty and refreshing. Brooklyn American Ale is easygoing, versatile, and dependable. It's a beer you and your friends can hang out with, no matter where you're from. ", upc: "5740700301544", alcohol: 4.5, temperature: 11, rating: 4, IBU: 30)
grimbergen_double_ambree.category = ale
grimbergen_double_ambree.color = brown
grimbergen_double_ambree.brewery = brooklyn_brew
grimbergen_double_ambree.remote_photo_url = url
grimbergen_double_ambree.glass = tumbler
grimbergen_double_ambree.save!

puts "Linking food to beer 14"
BeerFood.create!(beer: grimbergen_double_ambree, food: meat)
BeerFood.create!(beer: grimbergen_double_ambree, food: cheese)
BeerFood.create!(beer: grimbergen_double_ambree, food: vodka)



puts "Creating beer 15"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566989294/se_brooklyn-summer_nhh2ex.png"
brooklyn_summer_ale = Beer.new(name: "Brooklyn Summer Ale", beer_story: "Summer in Brooklyn is all about following your impulses, winging it from beaches and barbecues to stoops and rooftops. Brooklyn Summer Ale is a refreshing, flavourful pale ale made to accompany you on all your warm weather adventures. 100% British 2-row barley brings its famed bready flavors, capped off with German and American hops to provide a snappy, clean bitterness and a bright, floral aroma. It's a sunny pale ale, Brooklyn style.", upc: "5740700301544", alcohol: 5, temperature: 8, rating: 4, IBU: 50)
brooklyn_summer_ale.category = ale
brooklyn_summer_ale.color = brown
brooklyn_summer_ale.brewery = brooklyn_brew
brooklyn_summer_ale.remote_photo_url = url
brooklyn_summer_ale.glass = tumbler
brooklyn_summer_ale.save!

puts "Linking food to beer 15"
BeerFood.create!(beer: brooklyn_summer_ale, food: seafood)
BeerFood.create!(beer: brooklyn_summer_ale, food: cheese)
BeerFood.create!(beer: brooklyn_summer_ale, food: vodka)





puts "Done!"
