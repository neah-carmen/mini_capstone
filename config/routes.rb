Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/product" => "products#select_product_by_id"
    get "/product/:id" => "products#select_product_by_id"
    get "/all_products" => "products#display_all_products"
  end
end
