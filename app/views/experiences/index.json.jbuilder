json.array!(@experiences) do |experience|
  json.extract! experience, :id, :role, :company, :start, :end, :description, :profile_id
  json.url experience_url(experience, format: :json)
end
