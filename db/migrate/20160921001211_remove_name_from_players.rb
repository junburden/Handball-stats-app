class RemoveNameFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :name, :string
  end
end
