class Api::ProductsController < ApplicationController
  def get_db_extract
    db_extract = Product.all
    return db_extract
  end

  def parse_all_products
    db_extract = get_db_extract()
    @all_products = db_extract.map do |product|
      {
        id: product.id,
        name: product.name,
        price: "#{product.currency_code}#{product.price}",
        stock: product.stock,
        description: product.description,
        sale: product.on_sale,
      }
    end
    return @all_products
  end

  def display_product
    all_products = parse_all_products()
    id = params["id"].to_i
    @product = all_products.select do |product|
      product[:id] == id
    end
    render "product.json.jb"
  end

  def display_all_products
    parse_all_products()
    render "all_products.json.jb"
  end
end
