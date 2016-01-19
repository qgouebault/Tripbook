class ChangeTravelLogIdToJours < ActiveRecord::Migration
  def change
    rename_column :jours, :id_travel_log, :travel_log_id
  end
end
