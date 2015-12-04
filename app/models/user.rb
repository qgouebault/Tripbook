class User < ActiveRecord::Base
    has_many :travel_logs
    
    def to_s
        self.firstname
        self.lastname
    end
end


