Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  namespace :api do
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get "/suppliers" => "suppliers#index"
    post "/suppliers" => "suppliers#create"
    get "/suppliers/:id" => "suppliers#show"
    patch "/suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"

    get "/images" => "images#index"
    post "/images" => "images#create"
    get "/images/:id" => "images#show"
    patch "/images/:id" => "images#update"
    delete "/images/:id" => "images#destroy"

    get "/shopping_carts" => "shopping_carts#index"
    post "/shopping_carts" => "shopping_carts#create"
    get "/shopping_carts/:id" => "shopping_carts#show"
    patch "/shopping_carts/:id" => "shopping_carts#update"
    delete "/shopping_carts/:id" => "shopping_carts#destroy"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
