class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :pet
  has_many :requests

  def closed?
    self.requests.where(state: 'accepted').any?
  end

  def period
    (self.end_date.to_date - self.start_date.to_date).to_i
  end
end
