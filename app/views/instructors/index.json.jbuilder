json.array!(@instructors) do |instructor|
  json.extract! instructor, :firstname, :lastname, :email
  json.url instructor_url(instructor, format: :json)
end