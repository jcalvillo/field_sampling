class AddCalendarsLocationsTable < ActiveRecord::Migration
  def change
    create_table :calendars_locations do |t|
      t.integer "calendar_id"
      t.integer "location_id"
    end
  end
end
