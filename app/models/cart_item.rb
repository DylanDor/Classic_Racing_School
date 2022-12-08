class CartItem < ApplicationRecord
    belongs_to :cart
    belongs_to :driving_course
    #belongs_to :option
end
