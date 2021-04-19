class Admin < ApplicationRecord
    has_secure_password

    
    validates :username, :email, :password, presence: true
    
end