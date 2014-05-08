class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.text :name
      t.date :dates
      t.text :start
      t.text :finish
      t.integer :distance
      t.text :type

      t.timestamps
    end
  end
end
