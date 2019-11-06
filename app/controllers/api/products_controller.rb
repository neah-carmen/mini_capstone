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
        price: product.price,
        stock: product.stock,
        description: product.description,
      }
    end
    return @all_products
  end

  def display_first_product
    parse_all_products
    @all_products[0]
    render "first_product.json.jb"
  end

  def display_all_products
    parse_all_products
    render "all_products.json.jb"
  end
end
