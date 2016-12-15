class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :home, references: :team
      t.references :away, references: :team
      t.date :date

      t.timestamps
    end

    add_foreign_key :games, :teams, column: :home_id
    add_foreign_key :games, :teams, column: :away_id
  end
end
