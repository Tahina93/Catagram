class Item < ApplicationRecord
  has_many :item_cart_links, dependent: :destroy
  has_many :carts, through: :item_cart_links

  has_many :item_order_links, dependent: :destroy
  has_many :orders, through: :item_order_links

  has_many :buyers, source: :user, class_name: "User", through: :orders
  has_many :potential_buyers, source: :user, class_name: "User", through: :carts


  validates :title, presence: true, length: { in: 6..40 }, uniqueness: true
  validates :description, presence: true, length: { in: 6..1000 }
  validates :price, presence: true, :numericality => { greater_than_or_equal_to: 0 }    

end
