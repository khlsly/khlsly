json.array!(@documents) do |document|
  json.extract! document, :id, :name, :acceptNull, :service_id, :type_id
  json.url document_url(document, format: :json)
end
