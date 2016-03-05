class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :clean_phone_numb

  has_many :pets
  has_many :orders
  has_many :requests
  has_many :feedbacks, as: :feedbackable

  def clean_phone_numb
    phone.gsub!(/[^+10-9A-Za-z]/, '') if phone.present?
  end
end
