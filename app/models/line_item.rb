class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :quantity, :cart

  belongs_to :cart
  belongs_to :product
  belongs_to :order

  def total_price
    product.price * quantity
  end
end
