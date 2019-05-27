class Order < ApplicationRecord
  belongs_to :user

  has_many :item_order_links
  has_many :items, through: :item_order_links
end
