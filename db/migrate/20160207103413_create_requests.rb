class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :message
      t.boolean :state
      t.integer :user_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
