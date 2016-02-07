class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :feedbackable_id
      t.string :feedbackable_type
      t.text :message

      t.timestamps null: false
    end
  end
end
