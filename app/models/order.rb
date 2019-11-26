class Order < ApplicationRecord
  belongs_to :user

  has_many :shopping_carts
  has_many :products, through: :shopping_carts

  def calculations
    cart_subtotal = 0
    cart_taxes = 0

    shopping_carts.each do |item|
      cart_subtotal += (item.product.price * item.quantity)
      cart_taxes += (item.product.tax * item.quantity)
    end

    cart_total = cart_subtotal + cart_taxes
    self.subtotal = cart_subtotal
    self.tax = cart_taxes
    self.total = cart_total
    self.save
  end
end
