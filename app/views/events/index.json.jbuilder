json.array!(@events) do |event|
  json.extract! event, :id, :event_id, :status_id, :city_id
  json.url event_url(event, format: :json)
end
