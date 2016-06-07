class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  cart = Cart.find(...)
  puts "Количество товарных позиций в этой корзине: #{cart.line_items.count}"
end
