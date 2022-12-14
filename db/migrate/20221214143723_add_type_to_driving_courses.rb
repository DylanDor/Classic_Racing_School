class AddTypeToDrivingCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :driving_courses, :product_type, :integer, default: 0
    drop_table :options
  end
end
