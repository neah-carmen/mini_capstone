class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  def get_db_extract
    @db_extract = Product.all
    return @db_extract
  end

  def parse_all_products
    get_db_extract
    @all_products = @db_extract.map do |product|
      {
        name: product.name,
        price: product.price,
        stock: product.stock,
      }
    end
  end

  def display_all_products
    parse_all_products
    render "all_products.json.jb"
  end
end
