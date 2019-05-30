class OrdersController < ApplicationController
	before_action :authenticate_user!

	def index
	end

	def create

  # Amount in cents
  @amount = get_price

  customer = Stripe::Customer.create({
  	email: params[:stripeEmail],
  	source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
  	customer: customer.id,
  	amount: @amount.to_i,
  	description: 'Rails Stripe customer',
  	currency: 'eur',
  })

  order = Order.create(user: current_user)
  order.amount = @amount
  current_user.potential_items.each{|item|
    order.items.append(item)
    current_user.cart.items.delete(item)
  }

  redirect_to user_path(current_user.id)
  flash[:success] = "Merci, votre commande a bien été enregistrée"

rescue Stripe::CardError => e
	flash[:error] = e.message
	redirect_to new_charge_path
end

private

def get_price
	get_cart_price * 100
end
end
