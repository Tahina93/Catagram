class AddTotalPriceToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :amount, :float
  end
end
