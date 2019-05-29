class ApplicationController < ActionController::Base

  def get_cart_price
    total_price =0
    current_user.potential_items.each do |item|
      total_price += item.price
    end
    total_price
  end
  
end
