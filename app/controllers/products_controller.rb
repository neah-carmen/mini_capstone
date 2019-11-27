class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      currency_code: params[:currency_code],
      stock: params[:stock],
      description: params[:description],
      on_sale: params[:on_sale],
      discount: params[:discount],
      supplier_id: params[:supplier_id],
    )
    @product.save
    redirect_to "/recipes"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
