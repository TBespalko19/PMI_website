json.array!(@certifications) do |certification|
  json.extract! certification, :id, :title, :body, :lang_id, :integer
  json.url certification_url(certification, format: :json)
end
