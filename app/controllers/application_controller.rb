class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  def get_db_extract
    @db_extract = Product.all
  end

  def display_all_products
    get_db_extract
    render "all_products.json.jb"
  end
end
