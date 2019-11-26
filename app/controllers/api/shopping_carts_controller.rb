class Api::ShoppingCartsController < ApplicationController
  before_action :authenticate_user

  def index
    @shopping_carts = current_user.shopping_carts.where(status: "Carted")
    render "index.json.jb"
  end

  def create
    @shopping_cart = ShoppingCart.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
    )
    @shopping_cart.save
    render "show.json.jb"
  end

  def show
    @shopping_cart = ShoppingCart.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    render json: { message: "yo" }
  end

  def destroy
    @shopping_cart = current_user.shopping_carts.find_by(id: params[:id])
    @shopping_cart.status = "Removed"
    @shopping_cart.save
    render json: { message: "Product removed from your shopping cart." }
  end
end
