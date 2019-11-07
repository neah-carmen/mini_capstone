Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/product/:id" => "products#display_product"
    get "/first_product" => "products#display_first_product"
    get "/second_product" => "products#display_second_product"
    get "/third_product" => "products#display_third_product"
    get "/all_products" => "products#display_all_products"
  end
end
