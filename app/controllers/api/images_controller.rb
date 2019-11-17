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
    render json: { message: "update" }
  end

  def destroy
    render json: { message: "destroy" }
  end
end
