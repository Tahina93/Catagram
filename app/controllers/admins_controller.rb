class AdminsController < ApplicationController
	before_action :check_if_admin?

	def index
		@admin = current_user
		@all_users = User.all
	end

	def create

	end

	def show
		
	end

	def update
		
	end

	def destroy
		@user = User.find(params[:id])

		if @user.destroy
			flash[:success] = "L'utilisateur a bien été supprimé"
			redirect_back(fallback_location: admins_path)
		else 
			flash[:danger] = "Suite à un problème, l'utilisateur n'a pas pu être supprimé"
			redirect_back(fallback_location: admins_path)
		end
	end

	def method_name
		
	end
end
