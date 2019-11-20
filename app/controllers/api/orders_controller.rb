class Api::OrdersController < ApplicationController
  def create
    if current_user
      render json: { message: "create" }
    else
      render json: []
    end
  end

  def show
    render json: { message: "show" }
  end
end
