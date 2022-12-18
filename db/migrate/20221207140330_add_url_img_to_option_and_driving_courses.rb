class AddUrlImgToOptionAndDrivingCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :driving_courses, :img_url, :string
  end
end
