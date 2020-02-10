class Book < ApplicationRecord
    validates :name, length: {maximum:30}, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :desc, presence: true,  length: {maximum:1000}
    validates :short_desc, presence: true,  length: {maximum:300}
    validate :price_allowed

    def price_allowed
        if price.present? && price < 0
            errors.add(:price, "Invaid price")
        end
    end
    
end
