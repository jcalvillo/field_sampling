json.array!(@locations) do |location|
  json.extract! location, :id, :id, :latitude, :longitude, :sample_time, :city, :ranch, :field, :site, :grower, :block_id, :variety, :acres, :client
  json.url location_url(location, format: :json)
end
