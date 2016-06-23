class CreateShots < ActiveRecord::Migration[5.0]
  def change
    create_table :shots do |t|
      t.boolean :goal, default: false
      t.boolean :seven, default: false
      t.float :x_position
      t.float :y_position
      t.references :game, foreign_key: true
      t.references :team, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
