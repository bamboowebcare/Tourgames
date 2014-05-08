json.array!(@stages) do |stage|
  json.extract! stage, :id, :name, :dates, :start, :finish, :distance, :type
  json.url stage_url(stage, format: :json)
end
