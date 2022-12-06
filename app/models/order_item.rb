class OrderItem < ApplicationRecord
    belongs_to :driving_course
    belongs_to :order 
    belongs_to :option
end
