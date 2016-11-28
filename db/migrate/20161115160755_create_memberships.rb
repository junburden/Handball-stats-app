class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.references :team, foreign_key: true
      t.references :player, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
