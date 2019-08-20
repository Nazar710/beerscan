class AddUpcToBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :upc, :string
  end
end
