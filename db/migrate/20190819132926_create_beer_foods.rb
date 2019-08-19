class CreateBeerFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_foods do |t|
      t.references :beer, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
