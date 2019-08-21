class AddRatingToBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :rating, :integer
  end
end
