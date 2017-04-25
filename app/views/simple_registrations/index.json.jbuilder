json.array!(@simple_registrations) do |simple_registration|
  json.extract! simple_registration, :id, :event_id, :first_name, :last_name, :phone, :email, :company, :city, :comment
  json.url simple_registration_url(simple_registration, format: :json)
end
