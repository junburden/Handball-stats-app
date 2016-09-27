class AddShooterZPosToShots < ActiveRecord::Migration[5.0]
  def change
    add_column :shots, :shooter_z_pos, :integer
  end
end
