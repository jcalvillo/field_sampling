class CreateSampleDates < ActiveRecord::Migration
  def change
    create_table :sample_dates do |t|
      t.date :sample_date

      t.timestamps
    end
  end
end
