class Pet < ActiveRecord::Base
  validates :name, :gender, :age, :kind, presence: true
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :feedbacks, as: :feedbackable
  mount_uploader :avatar, AvatarUploader
end
