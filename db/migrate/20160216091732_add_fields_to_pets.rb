class AddFieldsToPets < ActiveRecord::Migration
  def change
    add_column :pets, :kind, :string
    add_column :pets, :species, :string
  end
end
