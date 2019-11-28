class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    if params[:on_sale] == "false"
      discount = false
    elsif params[:on_sale] == "true"
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
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    if params[:on_sale] == "false"
      discount = false
    elsif params[:on_sale] == "true"
      discount = true
    end

    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.currency_code = params[:currency_code]
    @product.stock = params[:stock]
    @product.description = params[:description]
    @product.on_sale = discount
    @product.discount = params[:discount]
    @product.supplier_id = params[:supplier_id]
    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
