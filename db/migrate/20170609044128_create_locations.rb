class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :client
      t.text :city
      t.text :ranchfield
      t.text :grower
      t.text :siteblock
      t.text :variety
      t.integer :acres
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
