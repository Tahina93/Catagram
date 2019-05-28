class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def new
  end

  def create
  end

  def update
    puts "******************************************************"
    puts "******************************************************"
    puts "******************************************************"
    puts "Hello"
    current_user.cart.items.append(Item.find(params["item_id"]))
    puts "L'id de l'item  #{params["item_id"]}"
    current_user.potential_items.each do |item|
      puts "Item mis dans le cart : #{item.title}"
    end
    puts "******************************************************"
    puts "******************************************************"
  end

  def destroy
  end

end
