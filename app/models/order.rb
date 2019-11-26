class Order < ApplicationRecord
  belongs_to :user

  has_many :shopping_carts
  has_many :products, through: :shopping_carts

  def calculations
    subtotal = 0
    taxes = 0

    shopping_carts.each do |item|
      subtotal += (item.product.price * item.quantity)
      taxes += (item.product.tax * item.quantity)
    end

    total = subtotal + taxes
    self.subtotal = subtotal
    self.tax = taxes
    self.total = total
    self.save
  end
end
