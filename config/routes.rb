Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/first_product" => "products#display_first_product"
    get "/all_products" => "products#display_all_products"
  end
end
