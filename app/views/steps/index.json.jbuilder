json.array!(@steps) do |step|
  json.extract! step, :description
  json.url step_url(step, format: :json)
end