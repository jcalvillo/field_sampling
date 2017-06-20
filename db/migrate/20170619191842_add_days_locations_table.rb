class AddDaysLocationsTable < ActiveRecord::Migration
  def change
    create_table :days_locations do |t|
      t.integer "day_id"
      t.integer "location_id"
    end
  end
end
