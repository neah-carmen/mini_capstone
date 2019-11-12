class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
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
    )
    @product.save
    render "show.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product_by_id = Product.find_by(id: params[:id])
    @product_by_id.name = params[:name] || @product_by_id.name
    @product_by_id.price = params[:price] || @product_by_id.price
    @product_by_id.currency_code = params[:currency_code] || @product_by_id.currency_code
    @product_by_id.stock = params[:stock] || @product_by_id.stock
    @product_by_id.image_url = params[:image_url] || @product_by_id.image_url
    @product_by_id.description = params[:description] || @product_by_id.description
    @product_by_id.on_sale = params[:on_sale] || @product_by_id.on_sale
    @product_by_id.save
    render "show.json.jb"
  end

  def destroy
    @product_by_id = Product.find_by(id: params[:id])
    @product_by_id.destroy
    render json: { message: "Product successfully deleted." }
  end
end
