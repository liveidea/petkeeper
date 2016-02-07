class ChangeStateFormatInRequests < ActiveRecord::Migration
  def up
    change_column :requests, :state, :string
  end

  def down
    change_column :requests, :state, :boolean
  end
end
