class Api::ProductsController < ApplicationController
  def get_db_extract
    db_extract = Product.all
  end

  def parse_all_products
    db_extract = get_db_extract()
    @all_products = db_extract.map do |product|
      {
        id: product.id,
        name: product.name,
        price: "#{product.currency_code}#{product.price}",
        stock: product.stock,
        description: product.description,
        sale: product.on_sale,
      }
    end
  end

  def index
    parse_all_products()
    render "index.json.jb"
  end

  def create
    @product_by_id = Product.new(
      name: params[:name],
      price: params[:price],
      currency_code: params[:currency_code],
      stock: params[:stock],
      image_url: params[:image_url],
      description: params[:description],
      on_sale: params[:on_sale],
    )
    @product_by_id.save
    render "show.json.jb"
  end

  def show
    all_products = parse_all_products()
    id = params["id"].to_i
    @product_by_id = all_products.select do |product|
      product[:id] == id
    end
    @product_by_id = @product_by_id[0]
    render "show.json.jb"
  end
end
