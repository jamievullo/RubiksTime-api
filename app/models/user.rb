class User < ApplicationRecord

    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true

    validates :password, presence: true, if: :setting_password?

    def setting_password?
        password
    end

end