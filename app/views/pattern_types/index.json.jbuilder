json.array!(@pattern_types) do |pattern_type|
  json.extract! pattern_type, :name
  json.url pattern_type_url(pattern_type, format: :json)
end