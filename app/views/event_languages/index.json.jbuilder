json.array!(@event_languages) do |event_language|
  json.extract! event_language, :id, :title, :short_event, :body, :author, :event_id, :lang_id
  json.url event_language_url(event_language, format: :json)
end
