class Pet < ActiveRecord::Base
  validates :name, :gender, :age, :kind, :species, presence: true
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :feedbacks, as: :feedbackable
end
