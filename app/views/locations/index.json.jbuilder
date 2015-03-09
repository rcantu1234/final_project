json.array!(@locations) do |location|
  json.extract! location, :id, :zip_code, :user_id
  json.url location_url(location, format: :json)
end
