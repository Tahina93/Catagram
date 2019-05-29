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
    item = get_item(params[:id])

    if params["to_remove"] == "true"
      current_user.cart.items.delete(item)
      redirect_back(fallback_location: cart_path)
    else
      current_user.cart.items.append(item)
      redirect_back(fallback_location: root_path + "#photo" + item.id.to_s)
    end
  end

  def destroy
  end

  private

  def get_item(title)
    Item.find_by(title: title)
  end
end
