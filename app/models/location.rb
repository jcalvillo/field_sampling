class Location < ActiveRecord::Base
  has_and_belongs_to_many :sample_date
end

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Users.create! row.to_hash
  end
end
