class CreateScans < ActiveRecord::Migration[5.2]
  def change
    create_table :scans do |t|
      t.string :photo

      t.timestamps
    end
  end
end
