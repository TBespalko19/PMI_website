json.array!(@cities) do |city|
  json.extract! city, :id, :city_id, :country_id
  json.url city_url(city, format: :json)
end
