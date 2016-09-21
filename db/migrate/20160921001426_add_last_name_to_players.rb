class AddLastNameToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :last_name, :string
  end
end
