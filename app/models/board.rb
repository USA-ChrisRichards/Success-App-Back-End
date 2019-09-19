class Board < ApplicationRecord
    belongs_to :user
    has_many :images, dependent: :destroy
    has_one :goal, dependent: :destroy
end
