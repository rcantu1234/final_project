json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :address, :city, :state, :zip_code
  json.url user_url(user, format: :json)
end
