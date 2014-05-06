json.array!(@tdf_teams) do |cycling_team|
  json.extract! cycling_team, :id, :name, :logo
  json.url cycling_team_url(cycling_team, format: :json)
end
