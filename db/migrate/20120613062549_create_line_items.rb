class CreateLineItems < ActiveRecord::Migration
  def change
    drop_table :line_items

    create_table :line_items do |t|
      t.integer :product_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
