class Cart < ApplicationRecord
    belongs_to :user
    has_many :cart_items
    has_many :driving_courses, through: :cart_items

    def total_price
        total = 0
        self.cart_items.each do |cart_item|
          total += cart_item.driving_course.price
        end
        return total
    end
end
