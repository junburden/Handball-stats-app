class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.references :league, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
