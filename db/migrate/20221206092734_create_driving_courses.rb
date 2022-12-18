class CreateDrivingCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :driving_courses do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
