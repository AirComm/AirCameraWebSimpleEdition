json.array!(@items) do |item|
  json.extract! item, :id, :title, :video
  json.url item_url(item, format: :json)
end
