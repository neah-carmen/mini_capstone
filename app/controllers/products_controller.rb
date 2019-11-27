class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    if params[:on_sale] == "False"
      discount = false
    elsif params[:on_sale] == "True"
      discount = true
    end

    @product = Product.new(
      name: params[:name],
      price: params[:price],
      currency_code: params[:currency_code],
      stock: params[:stock],
      description: params[:description],
      discount: params[:discount],
      supplier_id: params[:supplier_id],
      on_sale: discount,
    )
    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      redirect_to "/products"
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
