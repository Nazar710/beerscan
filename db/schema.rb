# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_21_100820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beer_foods", force: :cascade do |t|
    t.bigint "beer_id"
    t.bigint "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beer_foods_on_beer_id"
    t.index ["food_id"], name: "index_beer_foods_on_food_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.text "beer_story"
    t.float "alcohol"
    t.string "photo"
    t.integer "ibu"
    t.integer "temperature"
    t.bigint "category_id"
    t.bigint "color_id"
    t.bigint "brewery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "upc"
    t.integer "rating"
    t.index ["brewery_id"], name: "index_beers_on_brewery_id"
    t.index ["category_id"], name: "index_beers_on_category_id"
    t.index ["color_id"], name: "index_beers_on_color_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_breweries_on_country_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beer_foods", "beers"
  add_foreign_key "beer_foods", "foods"
  add_foreign_key "beers", "breweries"
  add_foreign_key "beers", "categories"
  add_foreign_key "beers", "colors"
  add_foreign_key "breweries", "countries"
end
