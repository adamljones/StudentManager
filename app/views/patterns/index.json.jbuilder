json.array!(@patterns) do |pattern|
  json.extract! pattern, :name, :pattern_type_id, :description
  json.url pattern_url(pattern, format: :json)
end