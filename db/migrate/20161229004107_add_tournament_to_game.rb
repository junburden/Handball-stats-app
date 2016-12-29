class AddTournamentToGame < ActiveRecord::Migration[5.0]
  def change
    add_reference :games, :tournament, foreign_key: true
  end
end
