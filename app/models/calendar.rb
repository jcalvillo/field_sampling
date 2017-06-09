class Calendar < ActiveRecord::Base
    def self.import(file)
      CSV.foreach(file.path, headers:true) do |row|
        Calendar.create! row.to_hash
      end
    end
end
