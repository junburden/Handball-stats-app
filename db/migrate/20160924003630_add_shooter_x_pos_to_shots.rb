class AddShooterXPosToShots < ActiveRecord::Migration[5.0]
  def change
    add_column :shots, :shooter_x_pos, :integer
  end
end
