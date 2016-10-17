class AddPositionToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :position, :string
  end
end
