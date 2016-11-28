class RemoveNumberAndPositionFromPlayer < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :number, :integer
    remove_column :players, :position, :string
  end
end
