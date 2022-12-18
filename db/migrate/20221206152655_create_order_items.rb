class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.belongs_to :order, index: true
      t.belongs_to :driving_course, index: true

      t.timestamps
    end
  end
end
