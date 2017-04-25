json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :lang_id, :title, :body
  json.url volunteer_url(volunteer, format: :json)
end
