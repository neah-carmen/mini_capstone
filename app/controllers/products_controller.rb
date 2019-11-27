class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    redirect_to "/recipes"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
