json.array!(@city_languages) do |city_language|
  json.extract! city_language, :id, :title, :lang_id, :city_id
  json.url city_language_url(city_language, format: :json)
end
