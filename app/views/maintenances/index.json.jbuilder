json.array!(@maintenances) do |maintenance|
  json.extract! maintenance, :id, :image, :title, :description
  json.url maintenance_url(maintenance, format: :json)
end
