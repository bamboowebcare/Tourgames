class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.references :CyclingTeams, index: true
      t.text :name
      t.date :birthday
      t.string :country
      t.boolean :tdf

      t.timestamps
    end
  end
end
