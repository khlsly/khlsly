json.array!(@order_documents) do |order_document|
  json.extract! order_document, :id, :value, :document_id, :order_id
  json.url order_document_url(order_document, format: :json)
end
