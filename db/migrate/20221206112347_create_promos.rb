class CreatePromos < ActiveRecord::Migration[7.0]
  def change
    create_table :promos do |t|
      t.string :name
      t.float :discount

      t.timestamps
    end
  end
end
