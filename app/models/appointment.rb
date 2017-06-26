class Appointment < ActiveRecord::Base

  belongs_to :location
  belongs_to :day

  def cb_label_l
    "#{location.client}/#{location.city}/#{location.ranchfield}/#{location.grower}/#{location.siteblock}/#{location.variety}/#{location.acres}, (#{location.latitude}, #{location.longitude})"
  end

  def cb_label_d
    "#{day.date}"
  end

end
