class Appointment < ActiveRecord::Base

  belongs_to :location
  belongs_to :day

end
