class BandsController < ApplicationController
  before_action :set_band, only: [:show, :update, :destroy]

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name)
  end

  def index
    @bands = Band.all

    render json: @bands
  end

  def show
    render json: Band.find(params[:id])
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      render json: @band, status: :created
    else
      render json: @band.errors, status: :unprocessible_entity
    end
  end

  def update
    if @band.update(band_params)
      head :no_content
    else
      render json: @band.errors, status: :unprocessible_entity
    end
  end

  def destroy
    @band.destroy

    head :no_content
  end
end
