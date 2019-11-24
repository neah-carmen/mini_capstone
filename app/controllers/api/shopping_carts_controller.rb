class Api::ShoppingCartsController < ApplicationController
  def index
    @shopping_carts = ShoppingCart.all
    render "index.json.jb"
  end

  def create
    @shopping_cart = ShoppingCart.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    @shopping_cart.save
    render "show.json.jb"
  end

  def show
    render json: { message: "yo" }
  end

  def update
    render json: { message: "yo" }
  end

  def destroy
    render json: { message: "yo" }
  end
end
