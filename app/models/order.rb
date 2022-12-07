class Order < ApplicationRecord
    belongs_to :user
    has_many :driving_courses, through: :order_items
    has_many :options, through: :order_items
    has_many :order_items
    #belongs_to :payment_detail

end
