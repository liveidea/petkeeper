class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :state
      t.integer :user_id
      t.integer :pet_id

      t.timestamps null: false
    end
  end
end
