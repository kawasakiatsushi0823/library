json.array!(@messages) do |message|
  json.extract! message, :id, :title, :context
  json.url message_url(message, format: :json)
end
