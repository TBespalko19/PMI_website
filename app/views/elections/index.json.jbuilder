json.array!(@elections) do |election|
  json.extract! election, :id, :body, :title
  json.url election_url(election, format: :json)
end
