class Day < ActiveRecord::Base
  has_many :appointments
  has_many :locations, through: :appointments

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Day.create! row.to_hash
    end
  end

end
