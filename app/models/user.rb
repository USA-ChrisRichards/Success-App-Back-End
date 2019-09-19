class User < ApplicationRecord
    has_many :boards, dependent: :destroy
    has_many :images, through: :boards
    has_many :goals, through: :boards

    has_secure_password
    validates :password_confirmation, presence: true, on: :create
    validates :password, confirmation: true

end
