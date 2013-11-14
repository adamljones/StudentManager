json.array!(@sashes) do |sash|
  json.extract! sash, :colour
  json.url sash_url(sash, format: :json)
end