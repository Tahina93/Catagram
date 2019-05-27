class Item < ApplicationRecord
  has_many :item_cart_links
  has_many :carts, through: :item_cart_links

  has_many :item_order_links
  has_many :orders, through: :item_order_links

  has_many :potential_buyers, foreign_key: "user_id", class_name: "User", through: :cart
  has_many :buyers, foreign_key: "user_id", class_name: "User", through: :orders
end
