class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = Order.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def create
    shopping_cart = ShoppingCart.find_by(status: "Carted")
    quantity = shopping_cart.quantity
    product_id = shopping_cart.product_id

    product = Product.find_by(id: product_id.to_i)
    subtotal = quantity.to_i * product.price
    tax = quantity.to_i * product.tax
    total = quantity.to_i * product.total

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,
    )
    if @order.save
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end
end
