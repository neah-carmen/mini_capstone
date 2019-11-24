class Api::ShoppingCartsController < ApplicationController
  before_action :authenticate_user

  def index
    @shopping_carts = ShoppingCart.where("status LIKE ?", "Carted")
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
    render json: { message: "yo" }
  end

  def update
    render json: { message: "yo" }
  end

  def destroy
    render json: { message: "yo" }
  end
end
