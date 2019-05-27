class Cart < ApplicationRecord
  belongs_to :user
  has_many :item_cart_links, dependent: :destroy
  has_many :items, through: :item_cart_links

end
