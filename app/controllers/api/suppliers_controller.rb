class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def create
    render "show.json.jb"
  end

  def show
    render "show.json.jb"
  end

  def update
    render "show.json.jb"
  end

  def destroy
    render json: { message: "destroy" }
  end
end
