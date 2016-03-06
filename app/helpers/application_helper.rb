module ApplicationHelper

  def can_submit_request_for_order?(order)
    !order.requests.where(state: '1').any?
  end

  def can_create_order?
    user_signed_in? && has_any_pet?
  end

  def can_create_request?(order)
    user_signed_in? && !(already_requested?(order) || order_owner?(order))
  end

  def already_requested?(order)
    current_user.requests.where(order_id: order).any?
  end

  def pet_owner?(pet)
    pet.user_id == current_user.id
  end

  def order_owner?(order)
    order.user_id == current_user.id
  end

  def request_owner?(request)
    request.user_id == current_user.id
  end

  def has_any_pet?
    current_user.pets.any?
  end

  def has_any_order?
    current_user.orders.any?
  end

  def has_any_request?
    current_user.requests.any?
  end
end
