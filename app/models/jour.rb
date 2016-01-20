class Jour < ActiveRecord::Base
    before_save :rename_avatar, on: :create
    belongs_to :travel_log
    
    has_attached_file :avatar, 
    :styles => { :small => "230x230>" , :medium => "500x500>"}
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
     def rename_avatar
      #avatar_file_name - important is the first word - avatar - depends on your column in DB table
      extension = File.extname(avatar_file_name).downcase
      self.avatar.instance_write :file_name, "#{Time.now.to_i.to_s}#{extension}"
    end
end
