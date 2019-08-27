class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :beer_story
      t.float :alcohol
      t.string :photo
      t.integer :ibu
      t.integer :temperature
      t.references :category, foreign_key: true
      t.references :color, foreign_key: true
      t.references :brewery, foreign_key: true
      t.references :glass, foreign_key: true
      t.timestamps
    end
  end
end
