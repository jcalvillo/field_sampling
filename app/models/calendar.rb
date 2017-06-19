class Calendar < ActiveRecord::Base
  has_and_belongs_to_many :locations
    def self.import(file)
      CSV.foreach(file.path, headers:true) do |row|
        Calendar.create! row.to_hash
      end
    end
end
