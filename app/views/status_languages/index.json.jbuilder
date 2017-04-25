json.array!(@status_languages) do |status_language|
  json.extract! status_language, :id, :title, :status_id, :lang_id
  json.url status_language_url(status_language, format: :json)
end
