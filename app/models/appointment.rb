class Appointment < ActiveRecord::Base

  belongs_to :location
  belongs_to :day

  def cb_label_l #called to display all fields for the checkbox label (days#show)
    "#{location.client}/#{location.city}/#{location.ranchfield}/#{location.grower}/#{location.siteblock}/#{location.variety}/#{location.acres}, (#{location.latitude}, #{location.longitude})"
  end

  def cb_label_d #called to display date for the checkbox label (locations#show)
    "#{day.date}"
  end

end
