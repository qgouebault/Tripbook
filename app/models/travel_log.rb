class TravelLog < ActiveRecord::Base
    belongs_to :user
    has_attached_file :avatar, :default_url => "/images/img1.png", :styles => { :small => "230x230>" }
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
