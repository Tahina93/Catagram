class ItemsController < ApplicationController
  def index
    @items = Item.all
    @categories = Category.all.sort_by{|e| e[:title]}

end

  def show
    @item = Item.find_by(title: params[:id])

  end
end
