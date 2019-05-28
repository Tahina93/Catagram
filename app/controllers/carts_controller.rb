class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @cart_price = get_cart_price
  end

  def new
  end

  def create
  end

  def update
    if params["to_remove"] == "true"
      current_user.cart.items.delete(Item.find(params["item_id"]))
      redirect_back(fallback_location: cart_path)
    else
      current_user.cart.items.append(Item.find(params["item_id"]))
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
  end

  private
  def get_cart_price
    total_price =0
    current_user.potential_items.each do |item|
      total_price += item.price
    end
    total_price
  end
end
