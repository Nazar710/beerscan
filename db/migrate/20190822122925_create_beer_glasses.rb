class CreateBeerGlasses < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_glasses do |t|
      t.references :category, foreign_key: true
      t.references :glass, foreign_key: true


      t.timestamps
    end
  end
end
