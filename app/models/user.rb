class User < ApplicationRecord
    has_many :boards, dependent: :destroy
    has_many :images, through: :boards
    has_many :goals, through: :boards

    has_secure_password
    # validates :password_confirmation, presence: true, on: :create
    # validates :password, confirmation: true

    validates :email, uniqueness: true

    # attr_accessor :password
 
#   def authenticate(plaintext_password)
#     if BCrypt::Password.new(self.password_digest) == plaintext_password
#       self
#     else
#       false
#     end
#   end

end
