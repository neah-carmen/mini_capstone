class Product < ApplicationRecord
  def on_sale?
    @products = []
    db_extract = Product.all
    db_extract.each do |product|
      @products << product
    end
  end

  def formatted_discount
    if on_sale == true
      "#{discount}%"
    elsif on_sale == false
      "Not on sale"
    end
  end

  def calcuated_discount
    price - (price * (discount / 100.00))
  end

  def formatted_price
    if on_sale == false
      "#{currency_code}#{price}"
    elsif on_sale == true
      "#{currency_code}#{calcuated_discount}"
    end
  end
end
