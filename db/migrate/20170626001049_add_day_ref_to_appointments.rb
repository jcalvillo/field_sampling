class AddDayRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :day, index: true
  end
end
