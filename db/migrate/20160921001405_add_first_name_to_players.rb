class AddFirstNameToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :first_name, :string
  end
end
