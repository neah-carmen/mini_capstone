class Api::OrdersController < ApplicationController
  def create
    render json: { message: "create" }
  end

  def show
    render json: { message: "show" }
  end
end
