class Order < ApplicationRecord

    after_create :fill_order, :empty_cart

    belongs_to :user
    has_many :driving_courses, through: :order_items
    has_many :options, through: :order_items
    has_many :order_items
    #belongs_to :payment_detail

    private

    def fill_order
        self.user.cart.cart_items.each do |cart_item|
            OrderItem.create(order_id: self.id, driving_course_id: cart_item.driving_course.id)
        end
    end

    def empty_cart
        self.user.cart.cart_items.destroy_all
    end

    def total_price
        total = 0
        self.order_items.each do |order_item|
          total += order_item.driving_course.price
        end
        return total
    end

end
