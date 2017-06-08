class User < ApplicationRecord
    attr_accessor :remember_token
    has_many :posts
    before_save { email.downcase! }
    validates :name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 25 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    
    def User.digest(string)
        Digest::SHA1.hexdigest(string)
    end
    
    def User.new_token
        SecureRandom.urlsafe_base64
    end
    
    def remember
       self.remember_token = User.new_token
       update_attribute(:remember_digest, User.digest(remember_token))
    end
end
