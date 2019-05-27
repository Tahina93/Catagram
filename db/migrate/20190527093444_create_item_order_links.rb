class CreateItemOrderLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :item_order_links do |t|
      t.belongs_to :order, index: true
      t.belongs_to :item, index: true
      t.timestamps
    end
  end
end
