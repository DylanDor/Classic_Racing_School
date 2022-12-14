class OptionsController < ApplicationController
    def index
        @options = DrivingCourse.where(product_type: 1)
    end
end
