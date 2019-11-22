class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    end
    # commented out for compatibility with front end
    # if params[:q]
    #   @products = @products.where("name ILIKE ?", "%#{params[:q]}%")
    # end

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end

    if params[:discount]
      @products = @products.discounted(params[:discount])
    end

    if params[:sort] == "price"
      @products = @products.sort_by_price(params[:sort_order])
    else
      @products = @products.default_sort
    end

    render "index.json.jb"
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
    if @product.save
      image = Image.new(url: params[:url], product_id: @product.id)
      image.save
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
    @product.description = params[:description] || @product.description
    @product.on_sale = params[:on_sale] || @product.on_sale
    @product.discount = params[:discount] || @product.discount
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
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
