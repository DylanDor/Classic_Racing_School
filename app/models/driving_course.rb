class DrivingCourse < ApplicationRecord
    has_many :cart_items
    has_many :order_items
    has_many :carts, through: :cart_items
    has_many :orders, through: :order_items

    validates :title, presence: true, length: {in: 3..300, message: "Title lenght must be between 3 and 300" }
    validates :description, presence: true, length: {in: 10..1000, message: "Description lenght must be between 10 and 1000" }
    validates :date, presence: true, if: :in_the_futur
    validates :quantity, presence: true, numericality: {greater_than: 0, message: "Quantity must be positive"}
    validates :price, presence: true, numericality: {greater_than_or_equal_to: 0, message: "Price must be positive"}
    validates :image_url, presence: true

    def in_the_futur
        errors.add(:date, "You can't create an Driving Course in the past.") unless date > Date.now
    end
end
