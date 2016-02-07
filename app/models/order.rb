class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :pet
  has_many :requests

  def closed?
    self.requests.where(state: 'accepted').any?
  end
end
