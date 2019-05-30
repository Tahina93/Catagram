class Admin::OrdersController < ApplicationController
	before_action :check_if_admin?

	def index
		@admin = current_user
		@all_orders = Order.all

	end

	def show

	end


	def destroy
		@order = Order.find(params[:id])

		if @order.destroy
			flash[:success] = "La commande a bien été supprimé"
			redirect_back(fallback_location: admin_orders_path)
		else 
			flash[:danger] = "Suite à un problème, la commande n'a pas pu être supprimé"
			redirect_back(fallback_location: admin_orders_path)
		end
	end

	def method_name

	end
end