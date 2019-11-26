class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = Order.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def create
    @order = Order.new(
      user_id: current_user.id,
    )
    @order.save

    shopping_cart = current_user.shopping_carts.where(status: "Carted")
    shopping_cart.update_all(status: "Purchased", order_id: @order.id)

    @order.calculations

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
