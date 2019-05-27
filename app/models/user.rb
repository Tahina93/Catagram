class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_one :cart
  has_many :orders

  has_many :potential_items, foreign_key: "item_id", class_name: "Item", through: :cart
  has_many :ordered_items, foreign_key: "item_id", class_name: "Item", through: :order
end
