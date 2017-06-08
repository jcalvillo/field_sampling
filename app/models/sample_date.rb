class SampleDate < ActiveRecord::Base
  has_and_belongs_to_many :location
end

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Users.create! row.to_hash
  end
end
