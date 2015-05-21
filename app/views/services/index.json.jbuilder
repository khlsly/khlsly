json.array!(@services) do |service|
  json.extract! service, :id, :name, :ministry_id
  json.url service_url(service, format: :json)
end
