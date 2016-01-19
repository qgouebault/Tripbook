class AddAvatarColumnsJour < ActiveRecord::Migration
  def up
    add_attachment :jours, :avatar
  end

  def down
    remove_attachment :jours, :avatar
  end
end
