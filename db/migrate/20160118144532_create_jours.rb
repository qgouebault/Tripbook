class CreateJours < ActiveRecord::Migration
  def change
    create_table :jours do |t|
      t.string :name
      t.string :description
      t.date :date
      t.integer :id_travel_log

      t.timestamps null: false
    end
  end
end
