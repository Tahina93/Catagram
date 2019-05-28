class RegistrationsController < Devise::RegistrationsController

  def new
  	super
  end

  def create
  	super
  	if user_signed_in?
  	  Cart.create(user_id: current_user.id)
  	end
  end

  def update
  	super
  end
end
