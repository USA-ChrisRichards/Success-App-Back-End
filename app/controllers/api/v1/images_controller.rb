class Api::V1::ImagesController < ApplicationController
    before_action :set_image, only: [:show,:update,:destroy]

  def index
    images = Image.all
    # images = Image.where("board_id = ?", params[:board_id])
    render json: images, status: 200
  end

  def create
    image = Image.create(image_params)
    render json: image, status: 201
  end

  def update
    @image.update(image_params)
    render json: @image, status: 200
  end

  def destroy
    imageId = @image.id
    @image.destroy
    render json: {message:"image Deleted!", imageId:imageId}
  end

  def show
    render json: @image, status: 200
  end

  private
  def image_params
    params.require(:image).permit(:title, :url, :board_id)
  end

  def set_image
    @image = Image.find(params[:id])
  end
end




