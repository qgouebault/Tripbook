class AddAvatarColumnsTravelLog < ActiveRecord::Migration
  def up
    add_attachment :travel_logs, :avatar
  end

  def down
    remove_attachment :travel_logs, :avatar
  end
end
