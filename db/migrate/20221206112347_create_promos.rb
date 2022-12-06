class CreatePromos < ActiveRecord::Migration[7.0]
  def change
    create_table :promos do |t|

      t.timestamps
    end
  end
end
