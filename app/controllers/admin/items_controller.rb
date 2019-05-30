class Admin::ItemsController < ApplicationController
	before_action :check_if_admin?

	def index
		@admin = current_user
		@all_items = Item.all

		array_price = []
		@all_items.each do |item|
			array_price << item.price
		end
		@average_price = array_price.sum / array_price.length

	end


	def create
		puts "ICI PARAMS #{params}"
		@item = Item.new(:title => params[:title], :description => params[:description], :price => params[:price], :image_url => params[:image_url], :category_id => params[:category_id])

		if @item.save
			flash[:success] = "Votre item a bien été créé"
			redirect_to admin_items_path
		else
			flash.now[:error] = "Désolé, une erreur est survenue"
		end
	end

	def edit
		@admin = current_user
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])

		if @item.update(:title => params[:item][:title], :description => params[:item][:description], :price => params[:item][:price], :image_url => params[:item][:image_url], :category_id => params[:item][:category_id])
			flash[:success] = "Votre item a bien été édité"
			redirect_to admin_items_path
		else
			flash.now[:error] = "Désolé, une erreur est survenue"
		end
	end

	def destroy
		@item = Item.find(params[:id])

		if @item.destroy
			flash[:success] = "L'item a bien été supprimé"
			redirect_back(fallback_location: admin_items_path)
		else 
			flash[:danger] = "Suite à un problème, l'item n'a pas pu être supprimé"
			redirect_back(fallback_location: admin_items_path)
		end
	end

end