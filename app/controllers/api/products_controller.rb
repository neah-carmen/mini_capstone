class Api::ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.where("name ILIKE ?", "%#{params[:search]}%")
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      currency_code: params[:currency_code],
      stock: params[:stock],
      image_url: params[:image_url],
      description: params[:description],
      on_sale: params[:on_sale],
      discount: params[:discount],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.currency_code = params[:currency_code] || @product.currency_code
    @product.stock = params[:stock] || @product.stock
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.on_sale = params[:on_sale] || @product.on_sale
    @product.discount = params[:discount] || @product.discount
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product successfully deleted." }
  end
end
