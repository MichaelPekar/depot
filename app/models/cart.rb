class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end
end

def create
  product = Product.find_by(id: params[:product_id])
  line_item = @cart.add_product(product.id)
  respond_to do |format|
    if line_item.save
      format.html { redirect_to @line_item.cart, notice: 'Line item was successfully created.' }
      format.json { render action: 'show', status: :created, location: @line_item }
    else
      format.html { render :new }
      format.json { render json: @line_item.errors, status: :unprocessable_entity }
    end
  end
end