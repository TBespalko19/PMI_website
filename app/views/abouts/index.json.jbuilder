json.array!(@abouts) do |about|
  json.extract! about, :id, :title, :body, :lang_id, :integer
  json.url about_url(about, format: :json)
end
