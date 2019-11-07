class Api::ProductsController < ApplicationController
  def get_db_extract
    db_extract = Product.all
    return db_extract
  end

  def parse_all_products
    db_extract = get_db_extract
    @all_products = db_extract.map do |product|
      {
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
    parse_all_products
    @id = params["id"].to_i
    @all_products[@id]
    render "product.json.jb"
  end

  def display_all_products
    parse_all_products
    render "all_products.json.jb"
  end
end
