class Agent < ApplicationRecord
    validates :name, presence: true
    validates :phone, presence: true
    validates :image, presence: true

    has_many :houses
end
