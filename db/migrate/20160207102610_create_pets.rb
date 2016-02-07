class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.text :description
      t.string :avatar
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
