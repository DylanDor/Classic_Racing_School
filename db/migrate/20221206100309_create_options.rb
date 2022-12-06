class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :title
      t.text :description
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
