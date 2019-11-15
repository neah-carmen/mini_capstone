class Api::SuppliersController < ApplicationController
  def index
    render json: { message: "index" }
  end

  def create
    render json: { message: "create" }
  end

  def show
    render json: { message: "show" }
  end

  def update
    render json: { message: "update" }
  end

  def destroy
    render json: { message: "destroy" }
  end

  def method_name
  end
end
