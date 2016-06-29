class RenamePlayerInShot < ActiveRecord::Migration[5.0]
  def change
    rename_column :shots, :player_id, :shooter_id
  end
end
