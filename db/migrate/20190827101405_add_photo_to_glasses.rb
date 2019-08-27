class AddPhotoToGlasses < ActiveRecord::Migration[5.2]
  def change
    add_column :glasses, :photo, :string
  end
end
