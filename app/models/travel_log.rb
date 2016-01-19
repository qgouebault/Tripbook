class TravelLog < ActiveRecord::Base
    belongs_to :user
    has_attached_file :avatar, 
    :file_name => ':id/:normalize_basename',
    :path => ':rails_root/app/assets/images/:normalize_basename.:content_type_extension',
    
    :styles => { :small => "230x230>" , :medium => "500x500>"}
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
    Paperclip.interpolates :normalize_basename do |attachment, style|
        attachment.instance.normalize_basename
    end


      def normalize_basename
        Time.now.to_i.to_s
      end

    has_many :jours
end
