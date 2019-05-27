class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_one :cart, dependent: :destroy
  has_many :orders, dependent: :destroy

  has_many :item_order_links, through: :orders, dependent: :destroy
  has_many :purchased_items, source: :item, class_name: "Item", through: :item_order_links

  has_many :item_cart_links, through: :cart, dependent: :destroy
  has_many :potential_items, source: :item, class_name: "Item", through: :item_cart_links
end
