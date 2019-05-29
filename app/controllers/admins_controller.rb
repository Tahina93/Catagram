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
		
	end

	def method_name
		
	end
end
