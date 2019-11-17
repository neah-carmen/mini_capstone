class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.json.jb"
  end

  def create
    render json: { message: "create" }
  end

  def show
    render json: { message: "show" }
  end

  def update
    render json: { message: "update" }
  end

  def destroy
    render json: { message: "destroy" }
  end
end
