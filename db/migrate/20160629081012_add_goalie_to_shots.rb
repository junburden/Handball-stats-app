class AddGoalieToShots < ActiveRecord::Migration[5.0]
  def change
    add_reference :shots, :goalie, references: :player
  end
end
