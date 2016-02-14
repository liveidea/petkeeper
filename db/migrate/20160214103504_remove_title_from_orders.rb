class RemoveTitleFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :title, :string
  end
end
