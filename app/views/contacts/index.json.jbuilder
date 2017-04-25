json.array!(@contacts) do |contact|
  json.extract! contact, :id, :title, :body, :lang_id
  json.url contact_url(contact, format: :json)
end
