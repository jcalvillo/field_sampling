class AddRelationshipsToLocationSampleDate < ActiveRecord::Migration
  def change
    create_table :location_sample_date do |t|
      t.integer :location_id
      t.integer :sample_date_id
    end
  end
end
