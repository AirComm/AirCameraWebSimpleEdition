json.items do |json|
  json.array!(@items) do |item|
    json.id item.id
    json.title item.title
  end
end