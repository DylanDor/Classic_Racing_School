class Promo < ApplicationRecord
    has_many :carts

    validates :name, presence: true, length: {in: 3..300, message: "Name lenght must be between 3 and 300" }
    validates :discount, presence: true, numericality: {greater_than_or_equal_to: 0, message: "Discount must be positive"}
end
