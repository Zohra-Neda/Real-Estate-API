class Agent < ApplicationRecord
    validates :name, presence: true
    validates :phone, presence: true
    validates :image, presence: true

    belongs_to :house
end
