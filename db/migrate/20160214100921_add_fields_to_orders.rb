class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :title, :string
    add_column :orders, :description, :text
  end
end
