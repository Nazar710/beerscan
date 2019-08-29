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
ale = Category.create!(name: "Ale", description: "Brewed with warm fermentation. Sweet, full-bodied and fruity.")
ipa = Category.create!(name: "IPA", description: "IPA or India Pale Ale. The most hopped beer style. Bitter and hops.")

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
scotland = Country.create!(name: "Scotland")

puts "Creating breweries"
tuborg_brew = Brewery.create!(name: "Tuborg", country: denmark)
carlsberg_brew = Brewery.create!(name: "Carlsberg", country: denmark)
praya_brew = Brewery.create!(name: "Praya", country: brazil)
brooklyn_brew = Brewery.create!(name: "Brooklyn", country: usa)
grimbergen_brew = Brewery.create!(name: "Grimbergen", country: belgium)
mikkeller_brew = Brewery.create!(name: "Mikkeller", country: denmark)
wellpark_brew = Brewery.create!(name: "Wellpark", country: scotland)

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
tuborg = Beer.new(name: "Tuborg", beer_story: "A bottom-fermented lager beer. It's brewed on lager malt, a slightly roasted, bright type of malt which results in the well-known mild, fresh taste and aroma of flowers and grain. The beer is medium rich and lively with a moderate bitterness in the aftertaste.", upc: "5740700301544", alcohol: 7.8, temperature: 8, rating: 3, ibu: 10)
tuborg.category = pilsner
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
carlsberg = Beer.new(name: "Carlsberg", beer_story: "Pilsner with a malty backbone and balanced bitterness. Aka: probably the best beer in the world.", upc: "5740700301544", alcohol: 7.2, temperature: 5, rating: 3, ibu: 9)
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
tuborg_classic = Beer.new(name: "Tuborg Classic", beer_story: "The original ’Classic’ was introduced on the occasion of Tuborg’s 120th birthday. Together, the complex combination of several different types of malt results in a playful mixture of an easy-to-drink beer with lots of great taste. The beer is dark in color and has a little bit of sweetness in the taste.", upc: "5740700301544", alcohol: 6.2, temperature: 5, rating: 4, ibu: 12)
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
tuborg_super_light = Beer.new(name: "Tuborg Super Light", beer_story: "The non-alcoholic version of the Tuborg Green. The pilsner taste is a result of the fact that it is brewed as a real pilsner, where the alcohol is later removed, gently. And, as an added bonus, it’s also low in calories – with just 40% of the calories of an ordinary pilsner.", upc: "5740700301544", alcohol: 0, temperature: 6, rating: 3, ibu: 11)
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
tuborg_skoll = Beer.new(name: "Tuborg Skoll", beer_story: "Tuborg Skøll a refreshing aromatised beer with a perfect combination of vodka and fruits. It has a bright golden colour, mild sparkes and a white head. The aroma is fruity and dominated by citrus. The taste is characterised by green lemon and grapefruit, a well-balanced mix of vodka, sweetness and tartness with a slight bitterness in the aftertaste.", upc: "5740700301544", alcohol: 6, temperature: 6, rating: 3, ibu: 11)
tuborg_skoll.category = pilsner
tuborg_skoll.color = light_yellow
tuborg_skoll.brewery = tuborg_brew
tuborg_skoll.remote_photo_url = url
tuborg_skoll.glass = tumbler
tuborg_skoll.save!

puts "Linking food to beer 5"
BeerFood.create!(beer: tuborg_skoll, food: japanese)
BeerFood.create!(beer: tuborg_skoll, food: salad)

puts "Creating beer 6"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566982393/roed_tuborg_33cl_vaad_cmyk_lj6fsn.png"

rod_tuborg = Beer.new(name: "Rod Tuborg", beer_story: "Red Tuborg is a dark, bottom-fermented lager beer that comes from Barvaria in Germany. Red Tuborg is a so-called all-malt beer, meaning that only malt and no raw grains (maize) are used. Four types of malt is used: münchener malt, pilsner malt and a bit of caramel and color malt. Together, these ingredients give the Tuborg yeast the distinctive reddish color, a very rich flavor and a rich foam. Ever since 1875, the Red Tuborg recipe has stayed the same.", upc: "5740700301544", alcohol: 4.3, temperature: 6, rating: 5, IBU: 30)

rod_tuborg.category = pilsner
rod_tuborg.color = dark_brown
rod_tuborg.brewery = tuborg_brew
rod_tuborg.remote_photo_url = url
rod_tuborg.glass = tumbler
rod_tuborg.save!

puts "Linking food to beer 6"
BeerFood.create!(beer: rod_tuborg, food: meat)
BeerFood.create!(beer: rod_tuborg, food: pasta)

puts "Creating beer 7"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566984843/106990_paaskebryg_2016_wet_l4twoh.png"

tuborg_paskebryg = Beer.new(name: "Tuborg Påskebryg", beer_story: "Tuborg Easter Brew saw the light of day back in 1913. Since 1965, it has been popularly know as 'Kylle Kylle' among Danes. Tuborg Easter Brew is a golden beer with warm notes. The aroma is lightly spiced with said floral nuances. The beer delivers a lively first impression with a nice volume and a refined, discrete sweetness.", upc: "5740700301544", alcohol: 6.2, temperature: 8, rating: 4, ibu: 10)

tuborg_paskebryg.category = pilsner
tuborg_paskebryg.color = dark_yellow
tuborg_paskebryg.brewery = tuborg_brew
tuborg_paskebryg.remote_photo_url = url
tuborg_paskebryg.glass = tumbler
tuborg_paskebryg.save!

puts "Linking food to beer 7"
BeerFood.create!(beer: tuborg_paskebryg, food: seafood)
BeerFood.create!(beer: tuborg_paskebryg, food: salad)

puts "Creating beer 8"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566983790/in_tuborg-classic-bottle_aha1p5.png"

tuborg_with_scotch = Beer.new(name: "Tuborg Scotch Malts", beer_story: "Tuborg Skøll a refreshing aromatised beer with a perfect combination of vodka and fruits. It has a bright golden colour, mild sparkes and a white head. The aroma is fruity and dominated by citrus. The taste is characterised by green lemon and grapefruit, a well-balanced mix of vodka, sweetness and tartness with a slight bitterness in the aftertaste.", upc: "5740700301544", alcohol: 6.7, temperature: 10, rating: 3, ibu: 12)

tuborg_with_scotch.category = pilsner
tuborg_with_scotch.color = light_yellow
tuborg_with_scotch.brewery = tuborg_brew
tuborg_with_scotch.remote_photo_url = url
tuborg_with_scotch.glass = tumbler
tuborg_with_scotch.save!

puts "Linking food to beer 8"
BeerFood.create!(beer: tuborg_with_scotch, food: chicken)
BeerFood.create!(beer: tuborg_with_scotch, food: pasta)

puts "Creating beer 9"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566984837/105444_guld_bottle_packshot_hbc3sz.png"

tuborg_gold = Beer.new(name: "Tuborg Gold", beer_story: "Tuborg Gold is brewed on pure lager malt and has an inviting aroma of fruit and grain with notes of fennel. It's an elegant beer with an excellent balance between a dry richness, a certain liveliness and a subtle hop character.", upc: "5740700301544", alcohol: 5.8, temperature: 13, rating: 2, ibu: 8)

tuborg_gold.category = pilsner
tuborg_gold.color = light_yellow
tuborg_gold.brewery = tuborg_brew
tuborg_gold.remote_photo_url = url
tuborg_gold.glass = tumbler
tuborg_gold.save!

puts "Linking food to beer 9"
BeerFood.create!(beer: tuborg_gold, food: salad)
BeerFood.create!(beer: tuborg_gold, food: japanese)

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

BeerFood.create!(beer: lubzer_urcraft, food: spicy)
BeerFood.create!(beer: lubzer_urcraft, food: pasta)

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
BeerFood.create!(beer: grimbergen_double_ambree, food: japanese)
BeerFood.create!(beer: grimbergen_double_ambree, food: seafood)

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
BeerFood.create!(beer: grimbergen_poire, food: pasta)

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
BeerFood.create!(beer: grimbergen_rouge, food: japanese)
BeerFood.create!(beer: grimbergen_rouge, food: cheese)

puts "Creating beer 14"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566989300/brooklyn_american_ale_s5az3y.png"
grimbergen_double_ambree = Beer.new(name: "Brooklyn American Ale", beer_story: "In New York City, things are complicated, fast and loud. So sometimes Newyorkers want a nice beer that's simply tasty and refreshing. Brooklyn American Ale is easygoing, versatile, and dependable. It's a beer you and your friends can hang out with, no matter where you're from. ", upc: "5740700301544", alcohol: 4.5, temperature: 11, rating: 4, IBU: 30)
grimbergen_double_ambree.category = ale
grimbergen_double_ambree.color = light_brown
grimbergen_double_ambree.brewery = brooklyn_brew
grimbergen_double_ambree.remote_photo_url = url
grimbergen_double_ambree.glass = tumbler
grimbergen_double_ambree.save!

puts "Linking food to beer 14"
BeerFood.create!(beer: grimbergen_double_ambree, food: pasta)
BeerFood.create!(beer: grimbergen_double_ambree, food: cheese)

puts "Creating beer 15"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566989294/se_brooklyn-summer_nhh2ex.png"

brooklyn_summer_ale = Beer.new(name: "Brooklyn Summer Ale", beer_story: "Summer in Brooklyn is all about following your impulses, winging it from beaches and barbecues to stoops and rooftops. Brooklyn Summer Ale is a refreshing, flavourful pale ale made to accompany you on all your warm weather adventures. 100% British 2-row barley brings its famed bready flavors, capped off with German and American hops to provide a snappy, clean bitterness and a bright, floral aroma. It's a sunny pale ale, Brooklyn style.", upc: "5740700301544", alcohol: 5, temperature: 8, rating: 4, IBU: 50)

brooklyn_summer_ale.category = ale
brooklyn_summer_ale.color = light_brown
brooklyn_summer_ale.brewery = brooklyn_brew
brooklyn_summer_ale.remote_photo_url = url
brooklyn_summer_ale.glass = tumbler
brooklyn_summer_ale.save!

puts "Linking food to beer 15"
BeerFood.create!(beer: brooklyn_summer_ale, food: seafood)
BeerFood.create!(beer: brooklyn_summer_ale, food: chicken)

puts "Creating beer 16"
url = "https://res.cloudinary.com/dmezivgcm/image/upload/v1566989717/brooklyn_hecla_iron_ale_lchcbj.png"
brooklyn_hecla_iron_ale = Beer.new(name: "Brooklyn Hecla Ale", beer_story: "Brooklyn Hecla Iron Ale is a flavorful dark ale celebrating the old Hecla Iron Works, which once occupied the building that is now the Brooklyn brewhouse in Williamsburg, Brooklyn. Named for a fierce Nordic volcano, Hecla Iron Works products were relied upon for projects from the New York Stock Exchange to the cast iron plates of Soho’s skyscrapers. They also gained renown for their pioneering work in delicate scrollwork and intricate decorations, examples of which can still be seen on the windowsills of the Brooklyn Brewery warehouse. Hecla Iron Ale is forged of rugged roast malts and resilient herbal hops to create a light yet robust beer fit to satisfy any hard worker.", upc: "5740700301544", alcohol: 3.4, temperature: 9, rating: 4)
brooklyn_hecla_iron_ale.category = pilsner
brooklyn_hecla_iron_ale.color = light_yellow
brooklyn_hecla_iron_ale.brewery = brooklyn_brew
brooklyn_hecla_iron_ale.remote_photo_url = url
brooklyn_hecla_iron_ale.glass = tumbler
brooklyn_hecla_iron_ale.save!

puts "Linking food to beer 16"
BeerFood.create!(beer: brooklyn_hecla_iron_ale, food: pasta)
BeerFood.create!(beer: brooklyn_hecla_iron_ale, food: salad)

puts "Creating beer 17"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090891/masks_landing/beers_project/bottles%20and%20cans/17_vqannv.png"
hazesan_llihops = Beer.new(name: "Hazesan Allihops", beer_story: "Hazy pale ale. A hazy straw coloured New England style pale ale giving tropical and citrus flavours resulting in sweet fruity notes and a refreshingly light finish.", upc: "5740700301544", alcohol: 7.9, temperature: 6, rating: 4, ibu: 12)
hazesan_llihops.category = ale
hazesan_llihops.color = brown
hazesan_llihops.brewery = mikkeller
hazesan_llihops.remote_photo_url = url
hazesan_llihops.glass = tumbler
hazesan_llihops.save!

puts "Linking food to beer 17"
BeerFood.create!(beer: hazesan_llihops, food: seafood)
BeerFood.create!(beer: hazesan_llihops, food: cheese)

puts "Creating beer 18"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090916/masks_landing/beers_project/bottles%20and%20cans/18_jpd1be.png"
american_dream_pils = Beer.new(name: "American Dream Pils", beer_story: "Extra dry-hopped pilsner. Crisp American Pilsner style beer with a malty kick. This version has even more hops.", upc: "73628240920001", alcohol: 6.8, temperature: 7, rating: 4, ibu: 13)
american_dream_pils.category = ale
american_dream_pils.color = dark_brown
american_dream_pils.brewery = mikkeller
american_dream_pils.remote_photo_url = url
american_dream_pils.glass = tumbler
american_dream_pils.save!

puts "Linking food to beer 18"
BeerFood.create!(beer: american_dream_pils, food: meat)
BeerFood.create!(beer: american_dream_pils, food: pasta)

puts "Creating beer 19"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090917/masks_landing/beers_project/bottles%20and%20cans/19_l2ilxd.png"
weird_weather = Beer.new(name: "Weird Weather", beer_story: "An IPA extra dry-hopped pilsner. Crisp American Pilsner style beer with a malty kick. This version has even more hops.", upc: "73628240920001", alcohol: 4.8, temperature: 6, rating: 5, ibu: 16)
weird_weather.category = ipa
weird_weather.color = brown
weird_weather.brewery = mikkeller
weird_weather.remote_photo_url = url
weird_weather.glass = tumbler
weird_weather.save!

puts "Linking food to beer 19"
BeerFood.create!(beer: weird_weather, food: meat)
BeerFood.create!(beer: weird_weather, food: chicken)

puts "Creating beer 20"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090918/masks_landing/beers_project/bottles%20and%20cans/20_staxqn.png"
henry_his_science = Beer.new(name: "Henry & His Science", beer_story: "Henry put on his science gloves and came up with his own yeast culture perfect for this low ABV Microbiologically flavored ale.", upc: "73628240920001", alcohol: 5.2, temperature: 7, rating: 4, ibu: 14)
henry_his_science.category = ale
henry_his_science.color = light_brown
henry_his_science.brewery = mikkeller
henry_his_science.remote_photo_url = url
henry_his_science.glass = tumbler
henry_his_science.save!

puts "Linking food to beer 20"
BeerFood.create!(beer: henry_his_science, food: salad)
BeerFood.create!(beer: henry_his_science, food: cheese)

puts "Creating beer 21"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090917/masks_landing/beers_project/bottles%20and%20cans/21_iomfse.png"
limbo_raspberry = Beer.new(name: "Limbo Raspberry", beer_story: "A new and refreshing non-alcoholic beer with tons and tons of raspberries for a light, fruity & tart palate.", upc: "704978620001", alcohol: 0, temperature: 8, rating: 3, ibu: 9)
limbo_raspberry.category = pilsner
limbo_raspberry.color = light_brown
limbo_raspberry.brewery = mikkeller
limbo_raspberry.remote_photo_url = url
limbo_raspberry.glass = tumbler
limbo_raspberry.save!

puts "Linking food to beer 21"
BeerFood.create!(beer: limbo_raspberry, food: meat)
BeerFood.create!(beer: limbo_raspberry, food: cheese)

puts "Creating beer 22"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090917/masks_landing/beers_project/bottles%20and%20cans/22_mzgfjh.png"
big_worster = Beer.new(name: "Big Worster", beer_story: "The perfect cold-recovery beer, it warms your throat and soul in every sip. Ideal for snowy days in your home.", upc: "704978620001", alcohol: 4.5, temperature: 9, rating: 4, ibu: 11)
big_worster.category = ale
big_worster.color = dark_brown
big_worster.brewery = mikkeller
big_worster.remote_photo_url = url
big_worster.glass = tumbler
big_worster.save!

puts "Linking food to beer 22"
BeerFood.create!(beer: big_worster, food: pasta)
BeerFood.create!(beer: big_worster, food: chicken)

puts "Creating beer 23"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090917/masks_landing/beers_project/bottles%20and%20cans/23_qoyh1o.png"
spontan_carrot = Beer.new(name: "Spontan Carrot", beer_story: "Sour Ale brewed with carrots and aged in oak barrels. Straight from the dirt!", upc: "704978620001", alcohol: 4.9, temperature: 8, rating: 5, ibu: 16)
spontan_carrot.category = ale
spontan_carrot.color = brown
spontan_carrot.brewery = mikkeller
spontan_carrot.remote_photo_url = url
spontan_carrot.glass = tumbler
spontan_carrot.save!

puts "Linking food to beer 23"
BeerFood.create!(beer: spontan_carrot, food: meat)
BeerFood.create!(beer: spontan_carrot, food: cheese)

puts "Creating beer 24"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090917/masks_landing/beers_project/bottles%20and%20cans/24_bpu6dv.png"
i_wish_gluten_free = Beer.new(name: "I Wish Gluten Free", beer_story: "A super hopped up American Pale Ale, designed, not just for the gluten sensitive, but for all beer fans alike.", upc: "709876620001", alcohol: 6.2, temperature: 5, rating: 3, ibu:10)
i_wish_gluten_free.category = ale
i_wish_gluten_free.color = brown
i_wish_gluten_free.brewery = mikkeller
i_wish_gluten_free.remote_photo_url = url
i_wish_gluten_free.glass = tumbler
i_wish_gluten_free.save!

puts "Linking food to beer 24"
BeerFood.create!(beer: i_wish_gluten_free, food: japanese)
BeerFood.create!(beer: i_wish_gluten_free, food: seafood)

puts "Creating beer 25"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567090917/masks_landing/beers_project/bottles%20and%20cans/25_yyigai.png"
vesterbro_series = Beer.new(name: "Vesterbro Series", beer_story: "Original Mikkeller Bar house beer, now available in bottles. Brown Ale.", upc: "704978620001", alcohol: 6.1, temperature: 8, rating: 5, ibu: 15)
vesterbro_series.category = ale
vesterbro_series.color = bdark_brown
vesterbro_series.brewery = mikkeller
vesterbro_series.remote_photo_url = url
vesterbro_series.glass = tumbler
vesterbro_series.save!

puts "Linking food to beer 25"
BeerFood.create!(beer: vesterbro_series, food: meat)
BeerFood.create!(beer: vesterbro_series, food: pasta)

puts "Creating beer 26"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567091485/masks_landing/beers_project/bottles%20and%20cans/26_agxoq2.png"
kaffestout = Beer.new(name: "Kaffestout", beer_story: "Artisan Stout brewed with Lactose and Coffee.", upc: "704978620001", alcohol: 6.0, temperature: 5, rating: 3, ibu: 10)
kaffestout.category = ale
kaffestout.color = brown
kaffestout.brewery = mikkeller
kaffestout.remote_photo_url = url
kaffestout.glass = tumbler
kaffestout.save!

puts "Linking food to beer 26"
BeerFood.create!(beer: kaffestout, food: pasta)
BeerFood.create!(beer: kaffestout, food: cheese)

puts "Creating beer 27"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567091485/masks_landing/beers_project/bottles%20and%20cans/27_uycvoo.png"
chipotle_porter = Beer.new(name: "Chipotle Porter", beer_story: "A dark ale, brewed with American hops and malt, warming chili and vanilla.", upc: "704978620001", alcohol: 5.2, temperature: 6, rating: 4, ibu: 11)
chipotle_porter.category = ale
chipotle_porter.color = light_brown
chipotle_porter.brewery = mikkeller
chipotle_porter.remote_photo_url = url
chipotle_porter.glass = tumbler
chipotle_porter.save!

puts "Linking food to beer 27"
BeerFood.create!(beer: chipotle_porter, food: japanese)
BeerFood.create!(beer: chipotle_porter, food: salad)

puts "Creating beer 28"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567091485/masks_landing/beers_project/bottles%20and%20cans/28_nw5ap7.png"
jackie_brown = Beer.new(name: "Jackie Brown", beer_story: "A dark ale, brewed with American hops and malt, warming chili and vanilla.", upc: "704978620001", alcohol: 5.2, temperature: 6, rating: 4, ibu: 11)
jackie_brown.category = ale
jackie_brown.color = dark_brown
jackie_brown.brewery = mikkeller
jackie_brown.remote_photo_url = url
jackie_brown.glass = tumbler
jackie_brown.save!

puts "Linking food to beer 28"
BeerFood.create!(beer: jackie_brown, food: cheese)
BeerFood.create!(beer: jackie_brown, food: salad)

puts "Creating beer 29"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567091485/masks_landing/beers_project/bottles%20and%20cans/29_vobl9v.png"
jackie_brown = Beer.new(name: "Spontan Peach", beer_story: "Sour Ale brewed with Peaches & aged in Oak Barrels.", upc: "457369620001", alcohol: 6.3, temperature: 8, rating: 4, ibu: 10)
jackie_brown.category = ale
jackie_brown.color = brown
jackie_brown.brewery = mikkeller
jackie_brown.remote_photo_url = url
jackie_brown.glass = tumbler
jackie_brown.save!

puts "Linking food to beer 29"
BeerFood.create!(beer: jackie_brown, food: meat)
BeerFood.create!(beer: jackie_brown, food: spicy)

puts "Creating beer 30"
url = "https://res.cloudinary.com/tatigrassi/image/upload/v1567093170/masks_landing/beers_project/bottles%20and%20cans/30_xfpica.png"
tennets = Beer.new(name: "Tennent's", beer_story: "Brewed since 1885, delicatelly paired with notes of single malt whisky and toasted oak.", upc: "45391516931250", alcohol: 6.0, temperature: 8, rating: 4, ibu: 10)
tennets.category = lager
tennets.color = light_brown
tennets.brewery = wellpark
tennets.remote_photo_url = url
tennets.glass = tumbler
tennets.save!

puts "Linking food to beer 30"
BeerFood.create!(beer: tennets, food: spicy)
BeerFood.create!(beer: tennets, food: japanese)

puts "Done!"
