class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  def display_all_products
    render "all_products.json.jb"
  end
end
