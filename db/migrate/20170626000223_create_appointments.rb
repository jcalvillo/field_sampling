class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :pulls
      t.timestamps
    end
  end
end
