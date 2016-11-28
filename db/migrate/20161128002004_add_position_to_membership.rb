class AddPositionToMembership < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :position, :string
  end
end
