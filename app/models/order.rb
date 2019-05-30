class Order < ApplicationRecord
  after_create :new_order_send, :new_order_admin_send
  belongs_to :user

  has_many :item_order_links, dependent: :destroy
  has_many :items, through: :item_order_links

  def new_order_send
   UserMailer.new_order_email(self).deliver_now
  end

  def new_order_admin_send
   UserMailer.new_order_admin_email(self).deliver_now
  end  
end
