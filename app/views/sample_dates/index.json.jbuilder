json.array!(@sample_dates) do |sample_date|
  json.extract! sample_date, :id, :sample_date
  json.url sample_date_url(sample_date, format: :json)
end
