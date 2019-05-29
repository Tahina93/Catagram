class User < ApplicationRecord
  after_create :welcome_send
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

 #Active Storage
 has_one_attached :profil_picture

 private

 def welcome_send
   puts "-"*100
   UserMailer.welcome_email(self).deliver_now
   puts "-"*100
 end

end
