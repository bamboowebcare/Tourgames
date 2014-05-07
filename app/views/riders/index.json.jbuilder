json.array!(@riders) do |rider|
  json.extract! rider, :id, :CyclingTeams_id, :name, :birthday, :country, :tdf
  json.url rider_url(rider, format: :json)
end
