class User < ApplicationRecord

    validates :username, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence:true, message: "Password can't be blank", length: {minimum: 6, allow_nil: true}


end
