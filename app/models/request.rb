class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :order

  validates :message, presence: true

  def accept!
    self.state = 'accepted'
    save
  end
end
