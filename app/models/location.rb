class Location < ActiveRecord::Base
  has_and_belongs_to_many :days

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Location.create! row.to_hash
    end
  end

  def cb_label
    "#{client}/#{city}/#{ranchfield}/#{grower}/#{siteblock}/#{variety}/#{acres}, (#{latitude}, #{longitude})"
  end

end
