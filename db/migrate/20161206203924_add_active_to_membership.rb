class AddActiveToMembership < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :active, :boolean
  end
end
