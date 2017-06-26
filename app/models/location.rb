class Location < ActiveRecord::Base
  has_many :appointments
  has_many :days, through: :appointments

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Location.create! row.to_hash
    end
  end

  def cb_label
    "#{client}/#{city}/#{ranchfield}/#{grower}/#{siteblock}/#{variety}/#{acres}, (#{latitude}, #{longitude})"
  end

end
