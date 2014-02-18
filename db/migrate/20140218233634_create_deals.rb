class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string  :type
      t.integer :price
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
