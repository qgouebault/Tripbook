class Jour < ActiveRecord::Base
    belongs_to :travel_log
    
    has_attached_file :avatar, 
    :path => ':rails_root/app/assets/images/:id_travel_log/:id/:basename.:content_type_extension',
    :url => ':id_travel_log/:id/:basename.:content_type_extension',
    :default_url => "/images/fond.jpeg", 
    :styles => { :small => "230x230>" , :medium => "500x500>"}
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
