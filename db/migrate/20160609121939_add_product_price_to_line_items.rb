class AddProductPriceToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :product_price, :integer
    LineItem.all.each do |line_item|
      line_item.update(product_price: line_item.product.price)
    end
  end
end
