class Driver < ApplicationRecord
    has_secure_password

    validates :first_name, :last_name, :email, :phone_number, :birthdate, :password, :license_number, :expiration_date, presence: true
    # validates :email, :phone_number, :license_number, uniqueness: true
    # validates :email,
                # format: { with: /A(.+)@(.+)z/, message: "Email invalid"  },
                #     uniqueness: { case_sensitive: false },
                #     length: { minimum: 4, maximum: 254 }   
    # validates_format_of :email, :with => /A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})z/i
    # validates :phone_number, length: { in: 9..14 }
    # validates :password, :format => {:with => /A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}z/, message: "must be at least 6 characters and include one number and one letter."}
    
    def full_name
        first_name + ' ' + last_name 
    end

end
