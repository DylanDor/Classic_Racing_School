class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    belongs_to :payment_detail

end
