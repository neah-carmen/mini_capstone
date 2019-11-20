class Api::OrdersController < ApplicationController
  def create
    if current_user
      @order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
      )
      if @order.save
        @product = Product.find_by(id: params[:product_id])
        @order.tax = @product.tax
        @order.total = @product.total
        render "show.json.jb"
      end
    else
      render json: []
    end
  end

  def show
    render json: { message: "show" }
  end
end
