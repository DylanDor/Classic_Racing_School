class Cart < ApplicationRecord
    belongs_to :user
    has_many :driving_courses, through: :cart_items
    has_many :options, through: :cart_items
    has_many :cart_items
end
