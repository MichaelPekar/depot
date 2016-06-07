class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  li = LineItem.find(...)
  puts "Эта товарная позиция относится к #{li.product.title}"
end
