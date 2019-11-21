class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = Order.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def create
    @product = Product.find_by(id: params[:product_id])
    subtotal = params[:quantity].to_i * @product.price
    tax = params[:quantity].to_i * @product.tax
    total = params[:quantity].to_i * @product.total

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
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
