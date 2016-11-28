class RemoveTeamIdFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :team_id, :Integer
  end
end
