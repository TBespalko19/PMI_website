json.array!(@memberships) do |membership|
  json.extract! membership, :id, :title, :body, :lang_id
  json.url membership_url(membership, format: :json)
end
