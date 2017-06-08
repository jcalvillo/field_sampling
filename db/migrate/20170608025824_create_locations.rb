class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.integer :sample_time
      t.string :city
      t.string :ranch
      t.string :field
      t.string :site
      t.string :grower
      t.string :block_id
      t.string :variety
      t.decimal :acres
      t.string :client

      t.timestamps
    end
  end
end
