class AddUserIdToTravelLogs < ActiveRecord::Migration
  def change
    add_column :travel_logs, :user_id, :integer
  end
end
