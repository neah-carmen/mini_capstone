class Product < ApplicationRecord
  def get_db_extract
    db_extract = Product.all
  end

  def parse_all_products
    db_extract = get_db_extract()
    @all_products = db_extract.map do |product|
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

  def formatted_price
    "#{currency_code}#{price}"
  end
end
