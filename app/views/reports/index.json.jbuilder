json.array!(@reports) do |report|
  json.extract! report, :id, :latitude, :longitude, :address, :description, :photo, :title, :text
  json.url report_url(report, format: :json)
end
