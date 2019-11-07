Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/product" => "products#display_product"
    get "/product/:id" => "products#display_product"
    get "/all_products" => "products#display_all_products"
  end
end
