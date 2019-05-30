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
    @item = get_item(params[:id])

    if params["to_remove"] == "true"
      @remove = true
      current_user.cart.items.delete(@item)
      respond_to do |format|
        format.html { redirect_back(fallback_location: cart_path) }
        format.js {}
      end     
    else
      current_user.cart.items.append(@item)
      respond_to do |format|
        format.html { redirect_back(fallback_location: root_path + "#photo" + item.id.to_s) }
        format.js {}
      end
    end
  end

  def destroy
  end

  private

  def get_item(title)
    Item.find_by(title: title)
  end
end
