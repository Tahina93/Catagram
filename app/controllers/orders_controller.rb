class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    order = Order.create(user: current_user)
    current_user.potential_items.each{|item|
      order.items.append(item)
      current_user.cart.items.delete(item)
    }
  end

end
