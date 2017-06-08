class SampleDate < ActiveRecord::Base
  has_and_belongs_to_many :location
end
