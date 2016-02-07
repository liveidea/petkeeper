class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :order

  def accept!
    self.state = 'accepted'
    self.save
  end
end
