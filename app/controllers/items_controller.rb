class ItemsController < ApplicationController
  def index
    puts "-" * 70
    puts @current_user
    puts "-" * 70
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
end
