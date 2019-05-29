class ApplicationController < ActionController::Base

  def get_cart_price
    total_price =0
    current_user.potential_items.each do |item|
      total_price += item.price
    end
    total_price
  end

  def check_if_admin?

  	if current_user.is_admin == true
  	else
  		redirect_back fallback_location: root_path
  		flash[:warning] = "Vous devez être un membre administrateur pour acceder à cette page"
  	end

  end
  
end
