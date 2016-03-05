class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :pet
  has_many :requests

  def closed?
    requests.where(state: 'accepted').any?
  end

  def period
    (end_date.to_date - start_date.to_date).to_i
  end
end
