class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.json.jb"
  end

  def create
    @image = Image.create(
      url: params[:url],
      product_id: params[:product_id],
    )
    render "show.json.jb"
  end

  def show
    @image = Image.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.url = params[:url] || @image.url
    @image.product_id = params[:product_id] || @image.product_id
    @image.save
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy
    render json: { message: "Image successfully deleted." }
  end
end
