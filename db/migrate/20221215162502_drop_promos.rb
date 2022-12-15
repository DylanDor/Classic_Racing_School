class DropPromos < ActiveRecord::Migration[7.0]
  def change
    drop_table :promos
  end
end
