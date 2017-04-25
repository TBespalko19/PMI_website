json.array!(@articles) do |article|
  json.extract! article, :id, :title, :lang_id, :short_article, :body, :author
  json.url article_url(article, format: :json)
end
