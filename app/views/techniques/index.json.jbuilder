json.array!(@techniques) do |technique|
  json.extract! technique, :sash_id, :name, :scenario
  json.url technique_url(technique, format: :json)
end