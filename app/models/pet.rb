class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  has_many :feedbacks, as: :feedbackable
end
