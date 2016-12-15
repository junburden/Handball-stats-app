class AddDefendingTeamToShot < ActiveRecord::Migration[5.0]
  def change
    add_reference :shots, :defending_team, references: :team

    add_foreign_key :shots, :teams, column: :defending_team_id
  end
end
