class ChangeCyclingTeamIdRiders < ActiveRecord::Migration
  def change
  rename_column :riders, :CyclingTeams_id, :cycling_team_id
 end
end

