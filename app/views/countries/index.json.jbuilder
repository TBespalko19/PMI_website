json.array!(@countries) do |country|
  json.extract! country, :id, :country_id
  json.url country_url(country, format: :json)
end
