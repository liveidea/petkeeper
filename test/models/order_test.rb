require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Check if order is closed" do
    o = orders(:one)
    o.requests.first.accept!
    assert o.closed?
  end
end
