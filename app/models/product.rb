class Product < ApplicationRecord
  def parse_all_products
    db_extract = Product.all
    @products = db_extract.map do |product|
      {
        id: product.id,
        name: product.name,
        price: product.price,
        stock: product.stock,
        image_url: product.image_url,
        description: product.description,
        sale: product.on_sale,
        formatted: {
          formatted_price: product.formatted_price,
        },
      }
    end
  end

  def on_sale?
    @products = []
    db_extract = Product.all
    db_extract.each do |product|
      @products << product
    end
  end

  def formatted_discount
    "#{discount}%"
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
