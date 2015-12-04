class CreateTravelLogs < ActiveRecord::Migration
  def change
    create_table :travel_logs do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
