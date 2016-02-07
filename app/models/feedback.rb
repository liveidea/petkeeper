class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :feedbackable, polymorphic: true
end
