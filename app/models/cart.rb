class Cart < ApplicationRecord
    belongs_to :user
    has_many :driving_courses
end
