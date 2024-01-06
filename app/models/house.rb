class House < ApplicationRecord
    validates :house_type, presence: true
    validates :name, presence: true
    validates :description, presence: true
    validates :image, presence: true
    validates :image_lg, presence: true
    validates :country, presence: true
    validates :address, presence: true
    validates :bedrooms, presence: true
    validates :bathrooms, presence: true
    validates :surface, presence: true
    validates :year, presence: true
    validates :price, presence: true

    belongs_to :agent
end
