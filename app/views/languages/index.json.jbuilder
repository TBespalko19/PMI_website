json.array!(@languages) do |language|
  json.extract! language, :id, :lang_id, :language
  json.url language_url(language, format: :json)
end
